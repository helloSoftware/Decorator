//
//  Component.h
//  装饰模式
//
//  Created by poplar on 2018/3/5.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Component <NSObject>

- (void)operation:(NSString *)text;

@end
