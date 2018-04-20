//
//  DetailTypeCell.m
//  OC&JS
//
//  Created by 赵永闯 on 2018/4/18.
//  Copyright © 2018年 zhaoyongchuang. All rights reserved.
//

#import "DetailTypeCell.h"

@implementation DetailTypeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 260, 30)];
        titleLabel.font = [UIFont systemFontOfSize:14.0];
        titleLabel.textColor = [UIColor darkGrayColor];
        [self.contentView addSubview:titleLabel];
        self.titleLabel = titleLabel;
    }
    return self;
}


@end
