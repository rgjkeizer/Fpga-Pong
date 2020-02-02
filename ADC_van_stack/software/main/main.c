/*

          O .
        _/|\_-O
       ___|_______
      /     |     \
     /      |      \
    #################      VHDL Pong by:
   /   _ ( )|        \     Michiel Brink
  /   ( ) | |         \    Rayvano Keizer
 /  \  |_/  |          \
/____\/|____|___________\
   |   |             |
   |  / \            |
   | /   \           |
   _/    /_

*/

#include <stdio.h>
#include <io.h>
#include <unistd.h>

#include "system.h"

#define CONTROLLER_A_CHANNEL 0x00
#define CONTROLLER_B_CHANNEL 0x03
#define pongBarHeight 0x28
#define pongBarWidth 30

int map(int input, int input_start, int input_end, int output_start, int output_end)
{
	int input_range = input_end - input_start;
	int output_range = output_end - output_start;

	int output = (input - input_start)*output_range / input_range + output_start;
    return output;
}

int adc_read(int channel)
{
	// set measure number for ADC convert
	IOWR(ADC_LTC2308_BASE, 0x01, 1);

	// start measure channel 1
	IOWR(ADC_LTC2308_BASE, 0x00, (channel << 1) | 0x00);
	IOWR(ADC_LTC2308_BASE, 0x00, (channel << 1) | 0x01);
	IOWR(ADC_LTC2308_BASE, 0x00, (channel << 1) | 0x00);
	usleep(1);

	// wait measure done
	while ((IORD(ADC_LTC2308_BASE,0x00) & 0x01) == 0x00);

	int Value = IORD(ADC_LTC2308_BASE, 0x01);
	return Value;
}

int start_measure(int channel)
{
	int Value = adc_read(channel);
	return Value;
}

int get_pongBar(int channel, int input_start, int input_end, int output_start, int output_end)
{
    int CONTROLLER_CHANNEL = CONTROLLER_A_CHANNEL;
    if (channel == 2)
    {
        CONTROLLER_CHANNEL = CONTROLLER_B_CHANNEL;
    }

    int value = start_measure(CONTROLLER_CHANNEL);
    int mapped_value = map(value, input_start, input_end, output_start, output_end);

    if (channel == 1)
    {
        IOWR(PONGBAR1_Y_BASE, 0x00, mapped_value);
    }
    else //if channel == 2
    {
        IOWR(PONGBAR2_Y_BASE, 0x00, mapped_value);
    }

    return mapped_value;
}

void updateBall(int ball_x, int ball_y)
{
    IOWR(BAL_X_BASE, 0x00, ball_x);
    IOWR(BAL_Y_BASE, 0x00, ball_y);
}

void main(void)
{
    int screenWidth = 640;
    int screenHeight = 480;

    while(1)
    {
    	int pongBar1_y = 0;
    	int pongBar2_y = 0;
        int currentLoop = 0;

        int ballLocation[2] = {screenWidth/2,screenHeight/2};
        int directionRight = 1;
        int directionUp = 1;
        int play = 1;
        int SPEED = 400;

        // generate random direction
        //directionRight = random(2)-1;
        //directionUp = random(2)-1;
//        IOWR(TONE_ENABLE_BASE, 0x0, 0x1);
    	while(play)
        {
    		if (directionUp == 1)
    			IOWR(TONE_BASE, 0x00, 0x03);
    		else
    			if (directionRight == 1)
    				IOWR(TONE_BASE, 0x00, 0x01);
    			else
    				IOWR(TONE_BASE, 0x00, 0x02);
            int pongBar1_x = 0;
            int pongBar2_x = screenWidth - pongBarWidth;

    		pongBar1_y = get_pongBar(1, 0, 4096, 5, 435);
    		pongBar2_y = get_pongBar(2, 0, 4096, 5, 435);
            updateBall(ballLocation[0], ballLocation[1]);

            currentLoop++;
            if(currentLoop == SPEED)
            {
                //if ball is touching the left pongBar
                if(ballLocation[0] == (pongBar1_x + 1) && (ballLocation[1] - 1 + (directionUp * 2)) >= pongBar1_y && (ballLocation[1] - 1 + (directionUp * 2)) <= (pongBar1_y + pongBarHeight)){
                        directionRight = 1;
                        if (SPEED > 100)
                        {
                            SPEED = SPEED - 12;
                        }
                }

                //if ball is touching the right pongBar
                if(ballLocation[0] == (pongBar2_x - 1) && (ballLocation[1] - 1 + (directionUp * 2)) >= pongBar2_y && (ballLocation[1] - 1 + (directionUp * 2)) <= (pongBar2_y + pongBarHeight)){
                        directionRight = 0;
                        if (SPEED > 100)
                        {
                            SPEED = SPEED - 12;
                        }
                }

                //Move ball
                ballLocation[0] = ballLocation[0] - 1 + (directionRight * 2);
                ballLocation[1] = ballLocation[1] - 1 + (directionUp * 2);

                //if ball is at top or bottom then bounce
                if(ballLocation[1] == 0 || ballLocation[1] == (screenHeight - 1))
                {
                    if(directionUp)
                    {
                        directionUp = 0;
                    }
                    else
                    {
                        directionUp = 1;
                    }
                }


                //if ball is outside game
                if(ballLocation[0] == 0){
                    //You have lost the game
//                    lastWinner = 1;
                    play = 0;
                }
                if(ballLocation[0] == (screenWidth - 1)){
                    //You have lost the game
//                    lastWinner = 0;
                    play = 0;
                }

                updateBall(ballLocation[0], ballLocation[1]);
                currentLoop = 0;
            }
        }
	}
}
