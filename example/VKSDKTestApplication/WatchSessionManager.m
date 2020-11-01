//
//  WatchSessionManager.m
//  VKSDKTestApplication
//
//  Created by Дмитрий Червяков on 31.10.2020.
//  Copyright © 2020 VK. All rights reserved.
//

#import "WatchSessionManager.h"

@interface WatchSessionManager()

@property (nonatomic, strong) WCSession *session;

@end

@implementation WatchSessionManager

+ (WatchSessionManager *)shared {
    static dispatch_once_t onceToken;
    static WatchSessionManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[WatchSessionManager alloc] init];
        manager.session = WCSession.defaultSession;

        if (WCSession.isSupported) {
            manager.session.delegate = manager;
            [manager.session activateSession];
        }
    });
    return manager;
}

- (void)session:(WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState
          error:(nullable NSError *)error {
    
}

- (void)sessionDidBecomeInactive:(WCSession *)session {

}

- (void)sessionDidDeactivate:(WCSession *)session {

    // Try to reconnect
    [self.session activateSession];
}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message replyHandler:(void(^)(NSDictionary<NSString *, id> *replyMessage))replyHandler {
    NSString *type = message[@"request"];
    if ([type isEqualToString: @"version"]) {
        VKRequest *feedRequest = [[VKApi newsfeed] get];

        [feedRequest executeWithResultBlock:^(VKResponse *response) {
            NSData *data = [response.responseString dataUsingEncoding:NSUTF8StringEncoding];
            replyHandler([NSJSONSerialization JSONObjectWithData:data options:0 error:nil]);
        } errorBlock:^(NSError *error) {
//            [self showAlertWithMessage:[error description]];
        }];
    }
}

@end
