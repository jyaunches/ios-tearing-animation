//
//  PageTearingCell.h
//  AnimationSample
//
//  Created by User on 4/5/13.
//  Copyright (c) 2013 User. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XBCurlView;

@interface PageTearingCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (nonatomic, strong) XBCurlView *topCurlView;

@end
