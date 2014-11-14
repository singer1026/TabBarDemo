//
//  MyTabBar.h
//  TabBarDemo
//
//  Created by Singer on 14/11/14.
//  Copyright (c) 2014年 Singer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyTabBarDelegate <NSObject>

@required
-(void) changeNav:(int)from to:(int)to;

@end
@interface MyTabBar : UIView
@property(nonatomic,weak) id<MyTabBarDelegate> delegate;
@end
