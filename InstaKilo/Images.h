//
//  Images.h
//  InstaKilo
//
//  Created by Anthony Ma on 2016-07-13.
//  Copyright © 2016 Anthony Ma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Images : UIImage

@property (nonatomic, strong) UIImage *imageName;

@property (nonatomic, assign) NSString *theme;

@property (nonatomic, assign) NSString *location;

-(instancetype)initWithProperties:(UIImage *)imageName forTheme:(NSString*)theme forLocation:(NSString*)location;

@end
