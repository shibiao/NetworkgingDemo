//
//  SBNetwork.h
//  NetworkgingDemo
//
//  Created by sycf_ios on 2017/6/26.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
typedef void(^successHandler)(NSURLSessionDataTask *task,id response);
typedef void(^failureHandler)(NSURLSessionDataTask *task, NSError *error);

@interface SBNetwork : NSObject
+(instancetype)share;

-(void)GetURL:(NSString *)url parameters:(NSDictionary *)parameters success:(successHandler)success failure:(failureHandler)failure;
-(void)PostURL:(NSString *)url parameters:(NSDictionary *)parameters success:(successHandler)success failure:(failureHandler)failure;
//检测网络的状态
-(void)networkStatusChangeAFN;
@end
