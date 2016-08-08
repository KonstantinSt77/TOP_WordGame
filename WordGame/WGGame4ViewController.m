//
//  WGGame4ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame4ViewController.h"
#define strStr stringByAppendingString
@interface WGGame4ViewController ()


-(IBAction)letterP:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterA:(id)sender;
-(IBAction)letterG:(id)sender;
-(IBAction)letterI:(id)sender;
-(IBAction)letterT:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterR:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame4ViewController

NSString *word4 = @"";
NSInteger chance4 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    word4 = @"";
    chance4 = 3;
}

-(IBAction)letterP:(id)sender
{
    word4 = [word4 strStr:@"P"];
}

-(IBAction)letterL:(id)sender
{
    word4 = [word4 strStr:@"L"];
}

-(IBAction)letterA:(id)sender
{
    word4 = [word4 strStr:@"A"];
}

-(IBAction)letterG:(id)sender
{
    word4 = [word4 strStr:@"G"];
}

-(IBAction)letterI:(id)sender
{
    word4 = [word4 strStr:@"I"];
}

-(IBAction)letterT:(id)sender
{
    word4 = [word4 strStr:@"T"];
}
-(IBAction)letterO:(id)sender
{
    word4 = [word4 strStr:@"O"];
}
-(IBAction)letterR:(id)sender
{
    word4 = [word4 strStr:@"R"];
}

-(IBAction)okAction:(id)sender {
 
        if (chance4 == 3 || chance4 == 2 || chance4 == 1){
            if ( [word4  isEqual: @"PLAGIATOR" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word4 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance4 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance4 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word4 = @"";
                    self.next.hidden = YES;
                    chance4--;
                    self.chance.text = [@(chance4) description];
                    
                }
            }
        }
    
}@end