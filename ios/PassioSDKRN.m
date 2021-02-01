//
//  PassioSDKRN.m
//  passioapp
//
//  Created by Jaime Betancourt on 1/31/21.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(PassioSDKRN, NSObject)
+ (BOOL)requiresMainQueueSetup { return YES; }
@end
