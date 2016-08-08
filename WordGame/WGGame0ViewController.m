//
//  WGGame0ViewController.m
//  Word Game
//
//  Created by Kostya on 20.02.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame0ViewController.h"
#define strStr stringByAppendingString
@interface WGGame0ViewController ()
-(IBAction)letterC:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterN:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame0ViewController

NSString *word = @"";
NSInteger chance = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    word = @"";
    chance = 3;
}

-(IBAction)letterC:(id)sender
{
    word = [word strStr:@"s"];
    
}

-(IBAction)letterL:(id)sender
{
    word = [word strStr:@"l"];
}

-(IBAction)letterO:(id)sender
{
    word = [word strStr:@"o"];
}

-(IBAction)letterN:(id)sender
{
    word = [word strStr:@"n"];
}

-(IBAction)okAction:(id)sender {
    
    if (chance == 3 || chance == 2 || chance == 1){
        if ( [word  isEqual: @"slon" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word = @"";
                self.next.hidden = NO;
            }
        else
            {
                if (chance == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word = @"";
                    self.next.hidden = YES;
                    chance--;
                    self.chance.text = [@(chance) description];
                
                }
            }
    }
}

@end