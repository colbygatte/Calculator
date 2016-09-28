//
//  ViewController.h
//  AddTwoNumbers
//
//  Created by Colby Gatte on 9/27/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
#import "ScientificCalculator.h"

@interface ViewController : UIViewController

{
    double operateOn;
    // 0 add
    // 1 subtract
    // 2 divide
    // 3 multiply
    // 4 mod
    int operation;
    Calculator *calc;
    ScientificCalculator *scalc;
    
}


@property (nonatomic,weak) IBOutlet UITextField *numberOne;
@property (nonatomic,weak) IBOutlet UITextField *numberTwo;
@property (nonatomic,weak) IBOutlet UILabel *answer;



@end

