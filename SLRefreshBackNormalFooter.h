//
//  SLRefreshBackNormalFooter.h
//  ShouTaoPayClient
//
//  Created by songlin on 01/08/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshBackStateFooter.h"

@interface SLRefreshBackNormalFooter : SLRefreshBackStateFooter
@property (weak, nonatomic, readonly) UIImageView *arrowView;
/** 菊花的样式 */
@property (assign, nonatomic) UIActivityIndicatorViewStyle activityIndicatorViewStyle;;


@end
