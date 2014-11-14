//
//  MyTabBar.m
//  TabBarDemo
//
//  Created by Singer on 14/11/14.
//  Copyright (c) 2014年 Singer. All rights reserved.
//

#import "MyTabBar.h"
#import "MyTabBarButton.h"

@interface MyTabBar()
{
    MyTabBarButton *_selectedBarButton;
}
@end

@implementation MyTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addBarButtons];
    }
    return self;
}

-(void) addBarButtons{
    for (int i = 0 ; i<5 ; i++) {
        MyTabBarButton *btn = [[MyTabBarButton alloc] init];
        CGFloat btnW = self.frame.size.width/5;
        CGFloat btnX = i * btnW;
        CGFloat btnY = 0;
        CGFloat btnH = self.frame.size.height;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        NSString *imageName = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selImageName = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:selImageName] forState:UIControlStateSelected];
        btn.tag = i;
        [self addSubview:btn];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        if(i == 0){
            [self btnClick:btn];
        }
    }
}


-(void) btnClick:(UIButton *)button{
    [self.delegate changeNav:_selectedBarButton.tag to:button.tag];
    _selectedBarButton.selected = NO;
    button.selected = YES;
    _selectedBarButton = (MyTabBarButton *)button;
}



@end
