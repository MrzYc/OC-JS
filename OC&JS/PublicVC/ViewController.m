//
//  ViewController.m
//  OC&JS
//
//  Created by 赵永闯 on 2018/4/18.
//  Copyright © 2018年 zhaoyongchuang. All rights reserved.
//

#import "ViewController.h"
#import "DetailTypeCell.h"

//拦截URL跳转
#import "URLUIWebViewController.h"
#import "URLWKWebViewController.h"


//使用JavaScriptCore
#import "JSCoreWebViewController.h"

//使用WebViewJavascriptBridge
#import "BridgeWebViewController.h"
#import "BridgeWkWebViewController.h"

//使用messageHandler（WkWebView）
#import "MessageWkWebViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArr = @[@"拦截URL实现OC与JS交互",@"UIWebView拦截URL",@"WKWebView拦截URL",@"使用JavaScriptCode完成",@"UIWebview使用JavaScriptCode",@"----------------------",@"WebViewJavascriptBridge",@"BridgeUIWebView",@"BridgeWKWebView",@"使用messageHandler",@"WkwebView使用",@"---------------"];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [tableView registerClass:[DetailTypeCell class] forCellReuseIdentifier:@"typeCell"];
    [self.view addSubview:tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    DetailTypeCell *detailCell = [tableView dequeueReusableCellWithIdentifier:@"typeCell"];
    if (indexPath.row % 3 == 0) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.text = self.dataArr[indexPath.row];
        return cell;
    }else {
        detailCell.selectionStyle = UITableViewCellSelectionStyleNone;
        detailCell.titleLabel.text = self.dataArr[indexPath.row];
        return detailCell;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row % 3 == 0) {
        return 50;
    }else {
        return 30;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row % 3 == 0) return;
    
    UIViewController *pushVC;
    switch (indexPath.row) {
            case 1:
            pushVC = [[URLUIWebViewController alloc] init];
            break;
            case 2:
            pushVC = [[URLWKWebViewController alloc] init];
            break;
            case 4:
            case 5:
            pushVC = [[JSCoreWebViewController alloc] init];
            break;
            case 7:
            pushVC = [[BridgeWebViewController alloc] init];
            break;
            case 8:
            pushVC = [[BridgeWkWebViewController alloc] init];
            break;
            case 10:
            case 11:
            pushVC = [[MessageWkWebViewController alloc] init];
            break;

        default:
            break;
    }    
    [self.navigationController pushViewController:pushVC animated:YES];
}





@end
