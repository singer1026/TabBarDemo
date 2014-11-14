//
//  MyTabBarController.m
//  TabBarDemo
//
//  Created by Singer on 14/11/14.
//  Copyright (c) 2014年 Singer. All rights reserved.
//

#import "MyTabBarController.h"
#import "MyTabBar.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyTabBar *tabBar = [[MyTabBar alloc]initWithFrame:self.tabBar.bounds];
    tabBar.backgroundColor = [UIColor grayColor];
    tabBar.delegate = self;
    [self.tabBar addSubview:tabBar];
    
}


-(void)changeNav:(int)from to:(int)to{
        self.selectedIndex = to;
}

@end
