//
//  MYViewController.m/Users/bsauniv20/Documents/Manojkumar/Calculator/Calculator/Base.lproj/Main_iPhone.storyboard
//  Calculator
//
//  Created by BSA Univ20 on 06/01/14.
//  Copyright (c) 2014 hispark. All rights reserved.
//

#import "MYViewController.h"

@interface MYViewController ()

@end

@implementation MYViewController

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)buttonClicked:(id)sender
{
    
    UIButton *bt=(UIButton *)sender;
    
    NSString *buttonLabel=bt.titleLabel.text;
    int val=[NSString stringWithFormat:buttonLabel];
    values=[buttonLabel integerValue];
    
    NSString * di=[NSString stringWithFormat:@"%d",values];
    
    
}

-(IBAction)buttonOperation:(id)op
{
    
    operation=plus;
    
    [display setText:@"0"];
    if(pValue==0)
        pValue=[values floatValue];
    
    else
    {
        aValue=[values floatValue];
        pValue+=aValue;
        NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
        [display setText:result];
        
    }
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationMinus:(id)op{
    [display setText:@"0"];
    
    operation=minus;
    if(pValue==0)
        pValue=[values floatValue];
    
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationMultiply:(id)op
{
    operation=multiply;
    [display setText:@"0"];
    if(pValue==0)
        pValue=[values floatValue];
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationDivide:(id)op
{
    operation=divide;
    
    [display setText:@"0"];
    //if Plus is pressed multiple times
    if(pValue==0)
        pValue=[values floatValue];
        values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationEqual:(id)op
{
    
    switch (operation) {
        case plus:
        {
            aValue=[values floatValue];
            pValue+=aValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
            
            break;
        }
            
        case minus:
        {
            aValue=[values floatValue];
            pValue-=aValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
            pValue=0;
            break;
        }
            
        case multiply:{
            aValue=[values floatValue];
            pValue*=aValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
            pValue=0;
            break;
        }
        case divide:{
            aValue=[values floatValue];
            pValue/=aValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
            pValue=0;
            break;
            values=[NSMutableString stringWithFormat:@"%s",""];
        }
                    default:
            break;
    }
}
-(IBAction)clearDisplay:(id)sender
{
    pValue=0;
    aValue=0;
    values=[NSMutableString stringWithFormat:@"%s",""];
    [display setText:@""];
}
@end


