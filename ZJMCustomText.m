//
//  ZJMCustomLabel.m
//  tim
//
//  Created by Trinetra K S on 04/12/14.
//  Copyright (c) 2014 Hummingwave Technologies. All rights reserved.
//

#import "ZJMCustomText.h"

static NSDictionary *labelsDictionary;

@implementation ZJMCustomText

+ (NSString *)customTextForXIB:(NSString *)XIBName forText:(NSString *)text {
    
    if ([XIBName containsString:@"Memeber"]) XIBName = @"Member";
     else if ([XIBName containsString:@"Search"])XIBName = @"Search";
        else if ([XIBName containsString:@"Demographics"])XIBName = @"Demographics";
            else return text;
    
    if (!labelsDictionary) {
        labelsDictionary = [NSDictionary new];
        NSString *fileName  = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"kFileName"];
        NSData *jsonData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fileName ofType:@"json"]];
        labelsDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:nil];
    }
    
    NSString *customText = labelsDictionary[XIBName][text];
    return customText ? customText : text;
}

@end
