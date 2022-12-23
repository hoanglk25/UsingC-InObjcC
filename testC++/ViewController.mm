//
//  ViewController.m
//  testC++
//
//  Created by Hoang Duc on 23/12/2022.
//

#import "ViewController.h"
#import "Operator.hpp"

@interface ViewController () {
    Operator Calculate;
}


@end

@implementation ViewController
@synthesize number1Txt, number2Txt, resLbl;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)calculate:(UIButton*)sender {
    int number1 = [number1Txt.text intValue];
    int number2 = [number2Txt.text intValue];
    int result = 0;
    if([sender.titleLabel.text isEqualToString:@"+"]) {
        result = Calculate.addAction(number1, number2);
    }
    if([sender.titleLabel.text isEqualToString:@"-"]) {
        result = Calculate.subAction(number1, number2);
    }
    if([sender.titleLabel.text isEqualToString:@"*"]) {
        result = Calculate.mulAction(number1, number2);
    }
    if([sender.titleLabel.text isEqualToString:@"/"]) {
        result = Calculate.divAction(number1, number2);
    }
    
    self.resLbl.text = [NSString stringWithFormat:@"%d", result];
}



@end
