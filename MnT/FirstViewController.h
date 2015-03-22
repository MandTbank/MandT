//
//  FirstViewController.h
//  MnT
//
//  Created by user26903 on 3/10/15.
//  Copyright (c) 2015 SUNY UB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *registerBtn;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reEnterPasswordField;

- (IBAction)registerUser:(id)sender;
- (IBAction)LoginUser:(id)sender;


@end

