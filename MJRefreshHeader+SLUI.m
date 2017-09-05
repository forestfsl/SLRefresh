//
//  MJRefreshHeader+SLUI.m
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "MJRefreshHeader+SLUI.h"

@implementation MJRefreshHeader (SLUI)

+ (instancetype)sl_headerWithRefreshingTarget:(id)target refreshingAction:(SEL)action{
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    
    [header setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
    [header setTitle:@"松开马上刷新" forState:MJRefreshStatePulling];
    [header setTitle:@"正在帮你刷新" forState:MJRefreshStateRefreshing];
    
    //    [header setImages:@[[UIImage imageNamed:@"loading0000"]] forState:MJRefreshStateIdle];
    //    [header setImages:@[[UIImage imageNamed:@"loading0000"]] forState:MJRefreshStatePulling];
    //    [header setImages:[self animateImages] forState:MJRefreshStateRefreshing];
    
    
    return header;
}


+ (NSArray *)animateImages {
    NSMutableArray *images = [[NSMutableArray alloc] initWithCapacity:8];
    for (int i = 0; i < 8; i++){
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"loading000%d", i]]];
    }
    return images;
}

@end
