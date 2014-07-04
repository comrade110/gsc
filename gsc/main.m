//
//  main.m
//  gsc
//
//  Created by xiang-chen on 14-6-20.
//  Copyright (c) 2014年 Fuleco studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BmobSDK/Bmob.h>
#import "FSAppDelegate.h"

int main(int argc, char * argv[])
{
    
    [Bmob registerWithAppKey:@"93018a5a3ef98ea6d4ae10ebb3f8d1e2"];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([FSAppDelegate class]));
    }
}
