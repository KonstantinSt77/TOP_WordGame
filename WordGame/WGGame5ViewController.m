//
//  WGGame5ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame5ViewController.h"
#define strStr stringByAppendingString

@interface WGGame5ViewController ()

-(IBAction)letterB:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterH:(id)sender;
-(IBAction)letterA:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame5ViewController

NSString *word5 = @"";
NSInteger chance5 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    word5 = @"";
    chance5 = 3;
}
-(IBAction)letterB:(id)sender
{
    word5 = [word5 strStr:@"B"];
}

-(IBAction)letterL:(id)sender
{
    word5 = [word5 strStr:@"L"];
}

-(IBAction)letterO:(id)sender
{
    word5 = [word5 strStr:@"O"];
}

-(IBAction)letterH:(id)sender
{
    word5 = [word5 strStr:@"H"];
}

-(IBAction)letterA:(id)sender
{
    word5 = [word5 strStr:@"A"];
}


-(IBAction)okAction:(id)sender {
        if (chance5 == 3 || chance5 == 2 || chance5 == 1){
            if ( [word5  isEqual: @"BLOHA" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word5 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance5 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance5 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word5 = @"";
                    self.next.hidden = YES;
                    chance5--;
                    self.chance.text = [@(chance5) description];
                    
                }
            }
        }
    
}@end