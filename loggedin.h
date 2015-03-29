//
//  loggedin.h
//  MnT
//
//  Created by user26903 on 3/28/15.
//  Copyright (c) 2015 SUNY UB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loggedin : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *eventTitleField;
@property (weak, nonatomic) IBOutlet UIButton *exportbutton;
@property (weak, nonatomic) IBOutlet UIButton *appInfoButton;
@property (weak, nonatomic) IBOutlet UIButton *eventTitleButton;


- (IBAction)logout:(id)sender;
- (IBAction)appInfo:(id)sender;
- (IBAction)ExportInfo:(id)sender;


@end
