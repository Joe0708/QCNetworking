//
//  ViewController.m
//  QCNetworking
//
//  Created by Joe on 16/9/12.
//  Copyright © 2016年 Joe. All rights reserved.
//

#import "ViewController.h"
#import "QCNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [QCNetworking downloadWithUrl:@"http://www.baidu.com/img/bdlogo.png" progressBlock:^(float progress) {
        NSLog(@"%f",progress);

    } successBlock:^(NSURL *fileUrl) {
        NSLog(@"%@", fileUrl);

    } failureBlock:^(NSError *error) {
        NSLog(@"%@", error);

    } showHUD:YES];
    
    
//    [QCNetworking postRequestWithUrl:@"http://api.kanzhihu.com/getposts" params:@{@"icon": @"啊啊"} successBlock:^(id returnData, int code, NSString *msg) {
//        NSLog(@"%@", returnData);
//
//    } failureBlock:^(NSError *error) {
//        NSLog(@"%@", error);
//
//    } showHUD:YES];

    
    
//    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.baidu.com/img/bdlogo.png"]];
//    
//    [QCNetworking uploadFileWithUrl:@"http://mall.sitilon.com:8089/NLEM/terminalUser!photoUpload.do?user_id=2c9280db4f01d61f014f0d6afc990015&ticketNo=30e1b465ffd0468bad194a531f78b0de" params:nil fileData:data type:@"png" name:@"image" mimeType:@"image/png" progressBlock:^(float progress) {
//        NSLog(@"%f", progress);
//
//    } successBlock:^(id returnData, int code, NSString *msg) {
//        NSLog(@"%@ %i %@", returnData , code , msg);
//
//    } failureBlock:^(NSError *error) {
//        NSLog(@"%@", error);
//
//    }];


}


/**
 1111
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [QCNetworking postRequestWithUrl:@"http://api.kanzhihu.com/getposts" params:nil cache:YES successBlock:^(id returnData, int code, NSString *msg) {
        NSLog(@"%@", returnData);
        
    } failureBlock:^(NSError *error) {
        NSLog(@"%@", error);
        
    } showHUD:NO];
}

@end
