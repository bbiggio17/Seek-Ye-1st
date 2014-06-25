//
//  DevotionViewController.m
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/28/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import "DevotionViewController.h"
#import "ImageViewController.h"
#import "WebViewController.h"

@interface DevotionViewController ()

@end

@implementation DevotionViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.lifeisajourney.org/wp-content/uploads/2013/09/5-finger-prayer.jpg", segue.identifier]];
        ivc.title = segue.identifier;
    }
    if ([segue.destinationViewController isKindOfClass:[WebViewController class]]) {
        WebViewController *wvc = (WebViewController *)segue.destinationViewController;
        wvc.webURLstring = segue.identifier;
        wvc.title = segue.identifier;
    }
}


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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
