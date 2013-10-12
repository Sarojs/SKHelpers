//
//  ViewController.m
//  SKHelper
//
//  Created by Saroj Sharma on 02/08/12.
//  Copyright (c) 2012 Saroj Sharma. All rights reserved.
//

#import "ViewController.h"
#import "NSString+SKNSString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self emailValidation];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (void)emailValidation{
    
    NSString *email =@"youremail@domain.com";
    NSLog(@"%@", ([email isValidateEmail:email] ? @"Is valid" : @"Is invalid"));
}

@end
