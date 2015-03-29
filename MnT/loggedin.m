//
//  loggedin.m
//  MnT
//
//  Created by user26903 on 3/28/15.
//  Copyright (c) 2015 SUNY UB. All rights reserved.
//

#import "loggedin.h"


@interface loggedin ()

@end

@implementation loggedin

- (id)initWithNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
            if (self) {
            }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)logout:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
