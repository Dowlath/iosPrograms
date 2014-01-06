//
//  MYViewController.h
//  Calculator
//
//  Created by BSA Univ20 on 06/01/14.
//  Copyright (c) 2014 hispark. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {plus, minus, multiply, divide, equal} caloperation ;
@interface MYViewController : UIViewController
{
IBOutlet UILabel *display;
caloperation operation;

int *values;

float pValue,aValue;

float res;
}
-(IBAction)buttonClicked:(id)sender;

-(IBAction)buttonOperation:(id)op;
-(IBAction)buttonOperationMinus:(id)op;
-(IBAction)buttonOperationMultiply:(id)op;
-(IBAction)buttonOperationDivide:(id)op;
-(IBAction)buttonOperationEqual:(id)op;

-(IBAction)clearDisplay:(id)sender;


@end
