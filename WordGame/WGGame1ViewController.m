//
//  WGGame1ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame1ViewController.h"
#define strStr stringByAppendingString
@interface WGGame1ViewController ()
-(IBAction)letterR:(id)sender;
-(IBAction)letterE:(id)sender;
-(IBAction)letterK:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterA:(id)sender;
-(IBAction)letterM:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame1ViewController

NSString *word2 = @"";
NSInteger chance2 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    word2 = @"";
    chance2 = 3;
}

-(IBAction)letterR:(id)sender
{
    word2 = [word2 strStr:@"R"];
}
-(IBAction)letterE:(id)sender
{
    word2 = [word2 strStr:@"E"];
}
-(IBAction)letterK:(id)sender
{
    word2 = [word2 strStr:@"K"];
}

-(IBAction)letterL:(id)sender
{
    word2 = [word2 strStr:@"L"];
}

-(IBAction)letterA:(id)sender
{
    word2 = [word2 strStr:@"A"];
}

-(IBAction)letterM:(id)sender
{
    word2 = [word2 strStr:@"M"];
}


-(IBAction)okAction:(id)sender {
        if (chance2 == 3 || chance2 == 2 || chance2 == 1){
            if ( [word2  isEqual: @"REKLAMA" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word2 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance2 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance2 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word2 = @"";
                    self.next.hidden = YES;
                    chance2--;
                    self.chance.text = [@(chance2) description];
                    
                }
            }
        }
    
}@end
