//
//  SLRefreshHeader.h
//  ShouTaoPayClient
//  创建header
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import <MJRefresh/MJRefresh.h>

@interface SLRefreshHeader : MJRefreshComponent

+(instancetype)headerWithRefreshingTarget:(id)target refreshingAction:(SEL)action;


@end
