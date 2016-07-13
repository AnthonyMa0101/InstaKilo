//
//  Images.m
//  InstaKilo
//
//  Created by Anthony Ma on 2016-07-13.
//  Copyright © 2016 Anthony Ma. All rights reserved.
//

#import "Images.h"

@implementation Images

-(instancetype)initWithProperties:(UIImage *)imageName forTheme:(NSString*)theme forLocation:(NSString*)location{
    if (self = [super init]){
        self.imageName = imageName;
        self.theme = theme;
        self.location = location;
    }
    return self;
}

@end
