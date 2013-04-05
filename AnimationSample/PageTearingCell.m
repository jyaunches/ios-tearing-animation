//
//  PageTearingCell.m
//  AnimationSample
//
//  Created by User on 4/5/13.
//  Copyright (c) 2013 User. All rights reserved.
//

#import "PageTearingCell.h"
#import "XBCurlView.h"

@interface PageTearingCell ()
@end


@implementation PageTearingCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
