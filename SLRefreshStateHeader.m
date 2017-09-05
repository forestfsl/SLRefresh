//
//  SLRefreshStateHeader.m
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshStateHeader.h"

@interface SLRefreshStateHeader ()
{
    /** 显示上一次刷新时间的label */
    __weak UILabel *_refreshLabel;
    /** 显示刷新状态的label */
    __weak UILabel *_stateLabel;
}

/** 所有状态对应的文字 */
@property (strong, nonatomic) NSMutableDictionary *stateTitles;
@end

@implementation SLRefreshStateHeader

#pragma mark - 懒加载
- (NSMutableDictionary *)stateTitles
{
    if (!_stateTitles) {
        self.stateTitles = [NSMutableDictionary dictionary];
    }
    return _stateTitles;
}

- (UILabel *)stateLabel
{
    if (!_stateLabel) {
        [self addSubview:_stateLabel = [UILabel mj_label]];
    }
    return _stateLabel;
}

- (UILabel *)refreshLabel
{
    if (!_refreshLabel) {
        [self addSubview:_refreshLabel = [UILabel mj_label]];
    }
    return _refreshLabel;
}

#pragma mark - 公共方法
- (void)setTitle:(NSString *)title forState:(MJRefreshState)state
{
    if (title == nil) return;
    self.stateTitles[@(state)] = title;
    self.stateLabel.text = self.stateTitles[@(self.state)];
}

- (void)setRefreshLabelTitle:(NSString *)title
{
    if (title == nil) {
        return;
    }
    self.refreshLabel.text = title;
}


#pragma mark - 覆盖父类的方法
- (void)prepare
{
    [super prepare];
    
    // 初始化文字
    [self setTitle:MJRefreshHeaderIdleText forState:MJRefreshStateIdle];
    [self setTitle:MJRefreshHeaderPullingText forState:MJRefreshStatePulling];
    [self setTitle:MJRefreshHeaderRefreshingText forState:MJRefreshStateRefreshing];
}

- (void)placeSubviews
{
    [super placeSubviews];
    
    if (self.stateLabel.hidden) return;
    
    // 主标题
    self.refreshLabel.mj_x = 0;
    self.refreshLabel.mj_y = self.mj_h * 0.4;
    self.refreshLabel.mj_w = self.mj_w;
    self.refreshLabel.mj_h = self.mj_h * 0.25;
    
    // 状态
    self.stateLabel.mj_x = 0;
    self.stateLabel.mj_y = self.refreshLabel.mj_y + self.refreshLabel.mj_h ;
    self.stateLabel.mj_w = self.mj_w;
    self.stateLabel.mj_h = self.mj_h * 0.15;
}

- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState
    
    // 设置状态文字
    self.stateLabel.text = self.stateTitles[@(state)];
}
@end
