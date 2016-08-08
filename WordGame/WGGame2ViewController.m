//
//  WGGame2ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame2ViewController.h"
#define strStr stringByAppendingString
@interface WGGame2ViewController ()
-(IBAction)letterI:(id)sender;
-(IBAction)letterS:(id)sender;
-(IBAction)letterT:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterR:(id)sender;
-(IBAction)letterK:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame2ViewController

NSString *word3 = @"";
NSInteger chance3 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
   self.next.hidden = YES;
    word3 = @"";
    chance3 = 3;
}

-(IBAction)letterI:(id)sender
{
    word3 = [word3 strStr:@"I"];
}

-(IBAction)letterS:(id)sender
{
    word3 = [word3 strStr:@"S"];
}

-(IBAction)letterT:(id)sender
{
    word3 = [word3 strStr:@"T"];
}

-(IBAction)letterO:(id)sender
{
    word3 = [word3 strStr:@"O"];
}

-(IBAction)letterR:(id)sender
{
    word3 = [word3 strStr:@"R"];
}

-(IBAction)letterK:(id)sender
{
    word3 = [word3 strStr:@"K"];
}


-(IBAction)okAction:(id)sender {
 
        if (chance3 == 3 || chance3 == 2 || chance3 == 1){
            if ( [word3  isEqual: @"ISTORIK" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word3 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance3 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance3 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word3 = @"";
                    self.next.hidden = YES;
                    chance3--;
                    self.chance.text = [@(chance3) description];
                    
                }
            }
        }
    
}@end