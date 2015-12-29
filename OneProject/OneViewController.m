//
//  OneViewController.m
//  OneProject
//
//  Created by scjy on 15/12/29.
//  Copyright © 2015年 苹果IOS. All rights reserved.
//

#import "OneViewController.h"

#import "NetWorkEngine.h"

@interface OneViewController ()<NetWorkEngineDelegate>

@end

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor magentaColor];
    
    NetWorkEngine *netWorkEngine = [NetWorkEngine netWorkEngineWithUrlString:@"http://api.milltary.app887.com/api/Articles.action?opc=10&npc=0&type=%E6%9C%80%E6%96%B0%E9%B2%9C" parameters:nil requestDelegate:self httpMethodType:NetWorkEngineTypeGET];
    [netWorkEngine startRequestNetWork];
    

}

- (void)netWorkDidStartLoading:(NetWorkEngine *)netWorkEngine{
    NSLog(@"网络请求开始");
}
- (void)netWorkDidFinishLoading:(NetWorkEngine *)netWorkEngine withResponseObject:(id)responseObject{
    NSLog(@"%@",responseObject );
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
