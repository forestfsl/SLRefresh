//
//  SLRefreshStateHeader.h
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshHeader.h"

@interface SLRefreshStateHeader : SLRefreshHeader
#pragma mark -主标题相关
/** 显示上一次刷新时间的label */
@property (weak, nonatomic, readonly) UILabel *refreshLabel;
/** 设置主标题文字 */
- (void)setRefreshLabelTitle:(NSString *)title;

#pragma mark - 状态相关
/** 显示刷新状态的label */
@property (weak, nonatomic, readonly) UILabel *stateLabel;
/** 设置state状态下的文字 */
- (void)setTitle:(NSString *)title forState:(MJRefreshState)state;

@end
