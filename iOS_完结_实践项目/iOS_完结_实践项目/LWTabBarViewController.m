//
//  LWTabBarViewController.m
//  iOS_完结_实践项目
//
//  Created by 文 on 16/6/15.
//  Copyright © 2016年 文. All rights reserved.
//

#import "LWTabBarViewController.h"
#import "LWNavigationBarViewController.h"


@interface LWTabBarViewController ()

@property (strong ,nonatomic)   NSArray * viewControllerArray;

@end

@implementation LWTabBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray * MutArray = [NSMutableArray arrayWithCapacity:self.viewControllerArray.count];
    [self.viewControllerArray enumerateObjectsUsingBlock:^(NSDictionary * dict, NSUInteger idx, BOOL * _Nonnull stop) {
        Class viewControllerClass = NSClassFromString(dict[@"viewController"]);
        
        UIViewController * viewController = [[viewControllerClass alloc]init];
        
        viewController.title = dict[@"title"];
        
        viewController.tabBarItem.image = [[UIImage imageNamed:dict[@"Image"]]imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
        
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:dict[@"seleImage"]]imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
        [viewController.tabBarItem setTitleTextAttributes:@{
                                                            NSFontAttributeName:[UIFont systemFontOfSize:10.0],
                                                            NSForegroundColorAttributeName:[UIColor colorWithRed:0.0/255.0 green:182.0/255.0 blue:245.0/255.0 alpha:1]
                                                            }forState:UIControlStateSelected];
        LWNavigationBarViewController * navigationVC = [[LWNavigationBarViewController alloc]initWithRootViewController:viewController];
        [MutArray addObject:navigationVC];
    }];
    self.viewControllers = MutArray;
    self.selectedIndex = 0;
}

- (NSArray *)viewControllerArray {
    if (!_viewControllerArray) {
        _viewControllerArray = [[NSArray alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"LWTabBarViewController" ofType:@"plist"]];
    }
    return _viewControllerArray;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
