//
//  WGGame8ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//


#import "WGGame8ViewController.h"
#define strStr stringByAppendingString
@interface WGGame8ViewController ()

-(IBAction)letterK:(id)sender;
-(IBAction)letterV:(id)sender;
-(IBAction)letterA:(id)sender;
-(IBAction)letterR:(id)sender;
-(IBAction)letterT:(id)sender;
-(IBAction)letterI:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame8ViewController

NSString *word8 = @"";
NSInteger chance8 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
   self.next.hidden = YES;
    word8 = @"";
    chance8 = 3;
}

-(IBAction)letterK:(id)sender
{
    word8 = [word8 strStr:@"K"];
}

-(IBAction)letterV:(id)sender
{
    word8 = [word8 strStr:@"V"];
}

-(IBAction)letterA:(id)sender
{
    word8 = [word8 strStr:@"A"];
}

-(IBAction)letterR:(id)sender
{
    word8 = [word8 strStr:@"R"];
}

-(IBAction)letterT:(id)sender
{
    word8 = [word8 strStr:@"T"];
}

-(IBAction)letterI:(id)sender
{
    word8 = [word8 strStr:@"I"];
}

-(IBAction)okAction:(id)sender {
 
        if (chance8 == 3 || chance8 == 2 || chance8 == 1){
            if ( [word8  isEqual: @"KVARTIRA" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word8 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance8 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance8 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word8 = @"";
                    self.next.hidden = YES;
                    chance8--;
                    self.chance.text = [@(chance8) description];
                    
                }
            }
        }
}@end