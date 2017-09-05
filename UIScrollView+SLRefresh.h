//
//  UIScrollView+SLRefresh.h
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLRefreshHeader.h"
#import "SLRefreshFooter.h"

@interface UIScrollView (SLRefresh)
/**
 *下拉刷新控件
 */
@property (nonatomic, strong) SLRefreshHeader *sl_header;

/**
 *上拉刷新控件
 */
@property (nonatomic, strong) SLRefreshFooter *sl_footer;

@end
