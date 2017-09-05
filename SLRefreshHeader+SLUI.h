//
//  SLRefreshHeader+SLUI.h
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshHeader.h"

@interface SLRefreshHeader (SLUI)

+(instancetype)sl_headerWithRefreshingTarget:(id)target refreshingAction:(SEL)action;

@end
