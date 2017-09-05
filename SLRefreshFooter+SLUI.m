//
//  MJRefreshFooter+SLUI.m
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshFooter+SLUI.h"
#import "SLRefreshBackNormalFooter.h"

@implementation SLRefreshFooter (SLUI)

+ (instancetype)sl_footerWithRefreshingTarget:(id)target refreshingAction:(SEL)action{
    SLRefreshBackNormalFooter *footer = [SLRefreshBackNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
    
    [footer setTitle:@"上拉加载更多" forState:MJRefreshStateIdle];
    [footer setTitle:@"松开马上加载更多" forState:MJRefreshStatePulling];
    [footer setTitle:@"正在帮你刷新" forState:MJRefreshStateRefreshing];
    
    return footer;
    
}

@end
