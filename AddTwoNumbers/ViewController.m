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
}


-(void) updateAnswer: (int) newAnswer {
    self.answer.text = [NSString stringWithFormat:@"%d", newAnswer];
}



-(IBAction) addButtonPressed {
    operateOn = [self.answer.text intValue];
    operation = 0;
    [self updateAnswer:0];
    
}

-(IBAction) subtractButtonPressed {
    
    operateOn = [self.answer.text intValue];
    operation = 1;
    [self updateAnswer:0];
}

-(IBAction) divideButtonPressed {
    operateOn = [self.answer.text intValue];
    operation = 2;
    [self updateAnswer:0];
}

-(IBAction) multiplyButtonPressed {
    operateOn = [self.answer.text intValue];
    operation = 3;
    [self updateAnswer:0];
}


-(IBAction) resetCalc {
    self.answer.text = @"0";
    operateOn = 0;
}

-(IBAction) equals {
    switch(operation) {
        case 0 :{
            int answer = operateOn + [self.answer.text intValue];
            [self updateAnswer:answer];
            break;}
            
        case 1 :{
            int answer = operateOn - [self.answer.text intValue];
            [self updateAnswer:answer];
            break;}
        case 2 :{
            int answer = operateOn / [self.answer.text intValue];
            [self updateAnswer:answer];
            break;}
        case 3 :{
            int answer = operateOn * [self.answer.text intValue];
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
