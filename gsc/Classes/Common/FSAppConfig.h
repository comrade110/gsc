//
//  FSAppConfig.h
//  gsc
//
//  Created by xiang-chen on 14-7-2.
//  Copyright (c) 2014年 Fuleco studio. All rights reserved.
//

#import <Foundation/Foundation.h>

#define WEAKSELF typeof(self) __weak weakSelf = self;

#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)

#define SB [UIStoryboard storyboardWithName:@"Main" bundle:nil]
#define FS_WINDOW [[[UIApplication sharedApplication] delegate] window]