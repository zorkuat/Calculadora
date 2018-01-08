//
//  ViewController.m
//  Calculadora
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) bool shouldReplaceDisplay;
@property (nonatomic) NSString * lastResult;
@property (nonatomic) NSString * operator;
@property (nonatomic) NSMutableArray * operand;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.shouldReplaceDisplay = true;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberPressed:(UIButton *)sender {
    NSString * numberString = sender.titleLabel.text;
    if(self.shouldReplaceDisplay)
    {
        self.displayLabel.text = numberString;
        self.shouldReplaceDisplay = false;
    }
    else
    {
        self.displayLabel.text = [NSString stringWithFormat:@"%@%@",self.displayLabel.text,numberString];
    }
    
}

- (void)calculateResult {
    int lastResultNumber = self.lastResult.intValue;
    int currentNumber = self.displayLabel.text.intValue;
    if ([self.operator isEqualToString:@"+"])
    {
        lastResultNumber += currentNumber;
        self.displayLabel.text = [NSString stringWithFormat:@"%d", lastResultNumber];
        self.shouldReplaceDisplay = true;
    }
    else if ([self.operator isEqualToString:@"-"])
    {
        lastResultNumber -= currentNumber;
        self.displayLabel.text = [NSString stringWithFormat:@"%d", lastResultNumber];
        self.shouldReplaceDisplay = true;
    }
    else if ([self.operator isEqualToString:@"/"] && currentNumber != 0)
    {
        lastResultNumber = lastResultNumber / currentNumber;
        self.displayLabel.text = [NSString stringWithFormat:@"%d", lastResultNumber];
        self.shouldReplaceDisplay = true;
    }
    else if ([self.operator isEqualToString:@"*"])
    {
        lastResultNumber = lastResultNumber * currentNumber;
        self.displayLabel.text = [NSString stringWithFormat:@"%d", lastResultNumber];
        self.shouldReplaceDisplay = true;
    }
}

- (IBAction)equalPressed:(id)sender {
    [self calculateResult];
    self.operator = nil;
}

- (IBAction)dividePressed:(id)sender {
    //[self calculateResult];
    self.lastResult = self.displayLabel.text;
    self.operator = @"/";
    //[self.operand addObject:self.displayLabel.text];
    //[self.operand addObject:@"/"];
    self.shouldReplaceDisplay = true;
}

- (IBAction)multiplyPressed:(id)sender {
    //[self calculateResult];
    self.lastResult = self.displayLabel.text;
    self.operator = @"*";
    //[self.operand addObject:self.displayLabel.text];
    //[self.operand addObject:@"/"];
    self.shouldReplaceDisplay = true;}

- (IBAction)plusPressed:(id)sender {
    //[self calculateResult];
    self.lastResult = self.displayLabel.text;
    self.operator = @"+";
    //[self.operand addObject:self.displayLabel.text];
    //[self.operand addObject:@"/"];
    self.shouldReplaceDisplay = true;
}

- (IBAction)minusPressed:(id)sender {
    //[self calculateResult];
    self.lastResult = self.displayLabel.text;
    self.operator = @"-";
    //[self.operand addObject:self.displayLabel.text];
    //[self.operand addObject:@"/"];
    self.shouldReplaceDisplay = true;
}
@end
