//
//  ViewController.m
//  NetworkgingDemo
//
//  Created by sycf_ios on 2017/6/26.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"
#import "SBNetwork.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[SBNetwork share]networkStatusChangeAFN];
//    [[SBNetwork share]GetURL:@"https://jsonplaceholder.typicode.com/users" parameters:nil success:^(NSURLSessionDataTask *task, id response) {
//        NSLog(@"success:%@",task.response);
//        NSArray *arr = response;
////        NSLog(@"success:%@",arr[0][@"address"][@"city"]);
//    } failure:^(NSURLSessionDataTask *task, NSError *error) {
//        NSLog(@"failure:%@",error);
//    }];
    NSDictionary *dic = @{@"title":@"foo",@"body":@"bar",@"userId":@1};
    [[SBNetwork share]PostURL:@"http://jsonplaceholder.typicode.com/posts" parameters:dic success:^(NSURLSessionDataTask *task, id response) {
        NSLog(@"success:%@",response);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"failure:%@",error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
