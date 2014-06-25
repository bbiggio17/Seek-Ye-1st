//
//  SelfAssessmentViewController.m
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/25/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import "SelfAssessmentViewController.h"
#import "AssessmentTableViewController.h"

@interface SelfAssessmentViewController ()

@end

@implementation SelfAssessmentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AssessmentTableViewController *atvc = (AssessmentTableViewController*)segue.destinationViewController;
    atvc.categoryString = segue.identifier;
    atvc.navigationItem.title = segue.identifier;
}


@end
