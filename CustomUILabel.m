//
//  CustomUILabel.m
//  tim
//
//  Created by Trinetra K S on 04/12/14.
//  Copyright (c) 2014 Hummingwave Technologies. All rights reserved.
//

#import "CustomUILabel.h"

@implementation CustomUILabel

- (void)awakeFromNib {
    NSArray *nibArray = [self.text componentsSeparatedByString:@"/"];
    self.text = [ZJMCustomText customTextForXIB:nibArray.firstObject forText:nibArray.lastObject];
}

@end
