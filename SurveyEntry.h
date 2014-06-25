//
//  SurveyEntry.h
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/23/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SurveyEntry : NSObject{
    NSString* surveyText;
    NSNumber* response;
    NSString* actionText;
    int category;
}

@property int category;
@property (nonatomic, strong)NSString* surveyText;
@property (nonatomic, strong)NSString* actionText;
@property NSNumber* response;

-(id)initWithSurveyText:(NSString*)t actionText:(NSString*)a category:(int)c;

@end
