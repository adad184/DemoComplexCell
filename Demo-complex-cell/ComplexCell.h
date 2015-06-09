//
//  ComplexCell.h
//  Demo-complex-cell
//
//  Created by Ralph Li on 6/9/15.
//  Copyright (c) 2015 LJC. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ComplexType) {
    ComplexType1111,
    ComplexType1110,
    ComplexType0111,
    ComplexType0011,
    ComplexType0010,
    ComplexType1101
};

@interface ComplexCell : UITableViewCell

@property (nonatomic, assign) ComplexType type;

+ (CGFloat) getHeightByType:(ComplexType)type;

@end
