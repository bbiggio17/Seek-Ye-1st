//
//  WebViewController.h
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/28/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController: UIViewController  <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *viewWeb;
@property (nonatomic, strong) NSString *webURLstring;


@end
