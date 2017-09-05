//
//  SLRefreshBackStateFooter.h
//  ShouTaoPayClient
//
//  Created by songlin on 01/08/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshBackFooter.h"

@interface SLRefreshBackStateFooter : SLRefreshBackFooter

/** 文字距离圈圈、箭头的距离 */
@property (assign, nonatomic) CGFloat labelLeftInset;
/** 显示刷新状态的label */
@property (weak, nonatomic, readonly) UILabel *stateLabel;
/** 设置state状态下的文字 */
- (void)setTitle:(NSString *)title forState:(MJRefreshState)state;

/** 获取state状态下的title */
- (NSString *)titleForState:(MJRefreshState)state;
@end
