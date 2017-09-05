//
//  MJRefreshHeader+SLUI.h
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import <MJRefresh/MJRefresh.h>

@interface MJRefreshHeader (SLUI)

+ (instancetype)sl_headerWithRefreshingTarget:(id)target refreshingAction:(SEL)action;

@end
