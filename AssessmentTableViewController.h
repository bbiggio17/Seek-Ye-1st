//
//  AssessmentTableViewController.h
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/15/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SurveyEntry.h"

@interface AssessmentTableViewController : UITableViewController {

NSArray* tableData;
    enum {PHYSICAL, EMOTIONAL, PSYCHOLOGICAL, SPIRITUAL, PROFESSIONAL};
    int category; // 0, 1, 2, 3 or 4 This is which survey area we should be now.
    NSMutableArray* categoryArray;
}

@property (nonatomic, strong) NSString *categoryString;

-(void)saveResponses;


@end
