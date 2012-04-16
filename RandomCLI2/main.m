//
//  main.m
//  RandomNumber
//
//  Created by Raymond T. Hightower on 4/11/12.
//  Copyright (c) 2012 WisdomGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // insert code here...
        int randomNumber = 1;
        int userGuess = 1;
        int numberOfGuesses = 0;
        int numberOfPlays = 0;
        BOOL keepPlaying = TRUE;
        BOOL keepGuessing = TRUE;
        char yesNo = ' ';
        
        
        randomNumber = (arc4random() % 101);
        
        while (keepPlaying)
        {
            numberOfPlays++;
            keepGuessing = TRUE;   
            
            while (keepGuessing) 
            {
                
                NSLog (@"\nPick a number between 0 and 100. ");
                scanf ("%i", &userGuess);
                fgetc (stdin); //remove CR/LF ie extra character
                numberOfGuesses++;
                
                if (userGuess == randomNumber)
                {
                    keepGuessing = FALSE;
                    NSLog(@"\n\n***** CORRECT, the number was %d! **********\n", userGuess);
                    NSLog(@"\n***** You guessed the number in %d tries. **********\n\n", numberOfGuesses);
                }
                else if (userGuess > randomNumber)
                {
                    NSLog(@"\n\n^^^^^^ Your guess is too high ^^^^^\n\n");
                }
                else
                {
                    NSLog(@"\n\nvvvvvv Your guess is too low vvvvvv\n\n");
                    
                }
                
                NSLog(@"\nThe user guessed %d", userGuess);
                NSLog(@"\nNumber of guesses so far: %d", numberOfGuesses);
                
            }
            
            NSLog(@"\nPlay Again? Y or N");            
            yesNo = fgetc(stdin);
            
            if (yesNo == 'N' || yesNo == 'n')
            {
                keepPlaying = FALSE;
                NSLog(@"\n\nThanks for playing. Goodbye!\n\n");
                NSLog(@"\n\nThanks for playing. Goodbye!\n\n");
            }
            
            NSLog(@"\nThe user guessed %d times on the last play.\n", numberOfGuesses);   
            NSLog(@"The user played %d times.\n", numberOfPlays); 
            
            numberOfGuesses = 0;
            
        }
    }
    return 0;
}
