//
//  SlRefreshGifHeader.h
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshStateHeader.h"

@interface SLRefreshGifHeader : SLRefreshStateHeader

/** 设置state状态下的动画图片images 动画持续时间duration*/
- (void)setImages:(NSArray *)images duration:(NSTimeInterval)duration forState:(MJRefreshState)state;
- (void)setImages:(NSArray *)images forState:(MJRefreshState)state;
@end
