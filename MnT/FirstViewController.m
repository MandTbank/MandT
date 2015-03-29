//
//  FirstViewController.m
//  MnT
//
//  Created by user26903 on 3/10/15.
//  Copyright (c) 2015 SUNY UB. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
    
    if (![defaults boolForKey:@"registered"]) {
        NSLog(@"No user registered");
        _loginBtn.hidden = YES;
    }
    else {
        NSLog(@"user is registered");
        _reEnterPasswordField.hidden = YES;
        _registerBtn.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)registerUser:(id)sender {
    
    
    if ([_usernameField.text isEqualToString:@""] || [_passwordField.text isEqualToString:@""] || [_reEnterPasswordField.text isEqualToString:@""]) {
        
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must complete all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [error show];
    }
    else {
        [self checkPasswordsMatch];
    }
}

- (void) checkPasswordsMatch {
    
    
    if ([_passwordField.text isEqualToString:_reEnterPasswordField.text]) {
        NSLog(@"passwords match!");
        [self registerNewUser];
    }
    else {
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your entered passwords do not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [error show];
    }
    
}

- (void) registerNewUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    [defaults setObject:_usernameField.text forKey:@"username"];
    [defaults setObject:_passwordField.text forKey:@"password"];
    [defaults setBool:YES forKey:@"registered"];
    
    [defaults synchronize];
    
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Success" message:@"You have registered a new user" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [success show];
    
    [self performSegueWithIdentifier:@"login" sender:self];
}

- (IBAction)LoginUser:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    if ([_usernameField.text isEqualToString:[defaults objectForKey:@"username"]] && [_passwordField.text isEqualToString:[defaults objectForKey:@"password"]]) {
        _usernameField.text = nil;
        _passwordField.text = nil;
        [self performSegueWithIdentifier:@"login" sender:self];
    }
    else {
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your username and password does not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [error show];
    }
}

@end

