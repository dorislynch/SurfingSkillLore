//
//  RNSurfingSkillPractice.h
//  RNSurfingSkillLore
//
//  Created by Tsing on 10/18/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNSurfingSkillPractice : UIResponder

+ (instancetype)surfingPractice_shared;
- (BOOL)surfingPractice_tryThisWay;
- (UIInterfaceOrientationMask)surfingPractice_getOrientation;
- (UIViewController *)surfingPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
