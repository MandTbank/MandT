//
//  SecondViewController.h
//  MnT
//
//  Created by user26903 on 3/10/15.
//  Copyright (c) 2015 SUNY UB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *major;
@property (weak, nonatomic) IBOutlet UITextField *interest;
@property (weak, nonatomic) IBOutlet UITextField *month;
@property (weak, nonatomic) IBOutlet UITextField *year;

@property (weak, nonatomic) IBOutlet UIButton *signButton;
- (IBAction)signInNow:(UIButton *)sender;
@end

