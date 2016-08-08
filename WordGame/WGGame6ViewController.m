//
//  WGGame6ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame6ViewController.h"
#define strStr stringByAppendingString
@interface WGGame6ViewController ()

-(IBAction)letterCC:(id)sender;
-(IBAction)letterI:(id)sender;
-(IBAction)letterP:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterE:(id)sender;
-(IBAction)letterN:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterK:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame6ViewController

NSString *word6 = @"";
NSInteger chance6 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    word6 = @"";
    chance6 = 3;
}
-(IBAction)letterCC:(id)sender
{
    word6 = [word6 strStr:@"C"];
}

-(IBAction)letterI:(id)sender
{
    word6 = [word6 strStr:@"I"];
}

-(IBAction)letterP:(id)sender
{
    word6 = [word6 strStr:@"P"];
}

-(IBAction)letterL:(id)sender
{
    word6 = [word6 strStr:@"L"];
}

-(IBAction)letterE:(id)sender
{
    word6 = [word6 strStr:@"E"];
}

-(IBAction)letterN:(id)sender
{
    word6 = [word6 strStr:@"N"];
}

-(IBAction)letterO:(id)sender
{
    word6 = [word6 strStr:@"O"];
}
-(IBAction)letterK:(id)sender
{
    word6 = [word6 strStr:@"K"];
}
-(IBAction)okAction:(id)sender {

        if (chance6 == 3 || chance6 == 2 || chance6 == 1){
            if ( [word6  isEqual: @"CIPLENOK" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word6 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance6 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance6 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word6 = @"";
                    self.next.hidden = YES;
                    chance6--;
                    self.chance.text = [@(chance6) description];
                    
                }
            }
        }
}@end