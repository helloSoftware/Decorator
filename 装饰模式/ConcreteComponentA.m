//
//  ATableViewCell.m
//  装饰模式
//
//  Created by poplar on 2018/3/5.
//  Copyright © 2018年 poplar. All rights reserved.
//

#import "ConcreteComponentA.h"

@implementation ConcreteComponentA

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor redColor];
        self.textLabel.text = @"this is ConcreteComponentAAAAAAAAAAAAAA";
        [self operation];
    }
    return self;
}

- (void)operation{
    
    NSLog(@"this is A Component");
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
