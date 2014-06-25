//
//  SurveyEntry.m
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/23/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import "SurveyEntry.h"

@implementation SurveyEntry

@synthesize category;
@synthesize surveyText;
@synthesize response;
@synthesize actionText;

-(id)initWithSurveyText:(NSString*)t actionText:(NSString*)a category:(int)c{
    self = [super init];
    if (self) {
        surveyText = t;
        actionText = a;
        category = c;
        response = [NSNumber numberWithInt:0];
    }
    return self;
    
}



@end
