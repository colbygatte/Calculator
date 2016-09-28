//
//  ViewController.m
//  AddTwoNumbers
//
//  Created by Colby Gatte on 9/27/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operateOn = 0;
    calc = [[Calculator alloc] init];
    scalc = [[ScientificCalculator alloc] init];
    
}


-(void) updateAnswer: (double) newAnswer {
    if(newAnswer == 0) {
        // We assign it this way because using stringWithFormat
        // and float will make it like "0.00000"
        self.answer.text = @"0";
    } else {
        self.answer.text = [NSString stringWithFormat:@"%f", newAnswer];
    }
}



-(IBAction) addButtonPressed {
    operateOn = [self.answer.text doubleValue];
    operation = 0;
    [self updateAnswer:0];
    
}

-(IBAction) subtractButtonPressed {
    
    operateOn = [self.answer.text doubleValue];
    operation = 1;
    [self updateAnswer:0];
}

-(IBAction) divideButtonPressed {
    operateOn = [self.answer.text doubleValue];
    operation = 2;
    [self updateAnswer:0];
}

-(IBAction) multiplyButtonPressed {
    operateOn = [self.answer.text doubleValue];
    operation = 3;
    [self updateAnswer:0];
}

-(IBAction) modButtonPressed {
    operateOn = [self.answer.text doubleValue];
    operation = 4;
    [self updateAnswer:0];
}

-(IBAction) resetCalc {
    self.answer.text = @"0";
    operateOn = 0;
}

-(IBAction) equals {
    switch(operation) {
        case 0 :{
            double answer = [calc add:operateOn  secondNumber:[self.answer.text doubleValue]];
            [self updateAnswer:answer];
            break;}
            
        case 1 :{
            double answer = [calc subtract:operateOn secondNumber:[self.answer.text doubleValue]];
            [self updateAnswer:answer];
            break;}
        case 2 :{
            double answer = [calc divide:operateOn secondNumber:[self.answer.text doubleValue]];
            [self updateAnswer:answer];
            break;}
        case 3 :{
            double answer = [calc multiply:operateOn secondNumber:[self.answer.text doubleValue]];
            [self updateAnswer:answer];
            break;}
        case 4:{
            double answer = [scalc mod:operateOn secondNumber:[self.answer.text intValue]];
            [self updateAnswer:answer];
            break;}
    }
}



// NUMBERS
// This method will add the desired number to the label "answer"
-(void) addNumberPress:(int) num {
    if([self.answer.text isEqualToString:@"0"]) {
        self.answer.text = [NSString stringWithFormat:@"%d", num];
    } else {
        
        self.answer.text = [NSString stringWithFormat:@"%@%d", self.answer.text, num];
    }
}

-(IBAction) calc1 {
    [self addNumberPress:1];
}
-(IBAction) calc2 {
    [self addNumberPress:2];
}
-(IBAction) calc3 {
    [self addNumberPress:3];
}
-(IBAction) calc4 {
    [self addNumberPress:4];
}
-(IBAction) calc5 {
    [self addNumberPress:5];
}
-(IBAction) calc6 {
    [self addNumberPress:6];
}
-(IBAction) calc7 {
    [self addNumberPress:7];
}
-(IBAction) calc8 {
    [self addNumberPress:8];
}
-(IBAction) calc9 {
    [self addNumberPress:9];
}
-(IBAction) calc0 {
    [self addNumberPress:0];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
