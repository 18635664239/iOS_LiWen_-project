//
//  LWPersonalViewController.m
//  iOS_完结_实践项目
//
//  Created by 文 on 16/6/15.
//  Copyright © 2016年 文. All rights reserved.
//

#import "LWPersonalViewController.h"
#import "inputView.h"

@interface LWPersonalViewController ()

@end

@implementation LWPersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    inputView * input = [[inputView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:input];
    
    // Do any additional setup after loading the view from its nib.
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
