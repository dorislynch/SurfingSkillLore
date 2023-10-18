//
//  RNSurfingSkillPractice.m
//  RNSurfingSkillLore
//
//  Created by Clieny on 10/18/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNSurfingSkillPractice.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNTheSurfingFunnyStory/RNTheSurfingFunnyShow.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNSurfingSkillPractice()

@property (strong, nonatomic)  NSArray *surfingPractice_Security;
@property (strong, nonatomic)  NSArray *surfingPractice_Params;

@end

@implementation RNSurfingSkillPractice

static RNSurfingSkillPractice *instance = nil;

+ (instancetype)surfingPractice_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.surfingPractice_Security = @[@"a71556f65ed2b25b55475b964488334f", @"ADD20BFCD9D4EA0278B11AEBB5B83365"];
    instance.surfingPractice_Params = @[@"surfingPractice_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)surfingPractice_jumpByPBD {
  NSString *pbString = [self surfingPractice_getCPString];
  CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self surfingPractice_subStringPBD:pbString]
                                                          hexKey:self.surfingPractice_Security[0]
                                                           hexIv:self.surfingPractice_Security[1]];
  
  NSDictionary *dataDict = [self surfingPractice_stringTranslate:aes.utf8String];
  return [self surfingPractice_storeConfigInfo:dataDict];
}

- (NSString *)surfingPractice_getCPString {
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  return clipboard.string ?: @"";
}

- (NSString *)surfingPractice_subStringPBD: (NSString* )pbString {
    if ([pbString containsString:@"#iPhone#"]) {
        NSArray *tempArray = [pbString componentsSeparatedByString:@"#iPhone#"];
        if (tempArray.count > 1) {
            pbString = tempArray[1];
        }
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [tempArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
        }];
        [ud synchronize];
    }
    return pbString;
}

- (NSDictionary *)surfingPractice_stringTranslate: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)surfingPractice_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.surfingPractice_Params[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)surfingPractice_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.surfingPractice_Params[0]]) {
    return YES;
  } else {
    return [self surfingPractice_jumpByPBD];
  }
}


- (UIViewController *)surfingPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  UIViewController *vc = [[RNTheSurfingFunnyShow locharmee_shared] locharmee_changeRootController:application withOptions:launchOptions];
//  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  return vc;
}

- (UIInterfaceOrientationMask)surfingPractice_getOrientation {
  return [Orientation getOrientation];
}

@end
