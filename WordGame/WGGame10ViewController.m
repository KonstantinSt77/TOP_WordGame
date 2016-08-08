//
//  WGGame10ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame10ViewController.h"

@interface WGGame10ViewController ()
#define strStr stringByAppendingString

-(IBAction)letterD:(id)sender;
-(IBAction)letterU:(id)sender;
-(IBAction)letterH:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame10ViewController

NSString *word10 = @"";
NSInteger chance10 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    word10 = @"";
    chance10 = 3;
}

-(IBAction)letterD:(id)sender
{
    word10 = [word10 strStr:@"D"];
}

-(IBAction)letterU:(id)sender
{
    word10 = [word10 strStr:@"U"];
}

-(IBAction)letterH:(id)sender
{
    word10 = [word10 strStr:@"H"];
}

-(IBAction)okAction:(id)sender {
        if (chance10 == 3 || chance10 == 2 || chance10 == 1){
            if ( [word10  isEqual: @"DUH" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word10 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance10 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance10 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word10 = @"";
                    self.next.hidden = YES;
                    chance10--;
                    self.chance.text = [@(chance10) description];
                    
                }
            }
        }
}@end