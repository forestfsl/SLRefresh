//
//  MJRefreshFooter+SLUI.h
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshFooter.h"

@interface SLRefreshFooter (SLUI)

+ (instancetype)sl_footerWithRefreshingTarget:(id)target refreshingAction:(SEL)action;
@end
