//
//  RGTransparentView.h
//  AraProject
//
//  Created by YELDI_EMP on 27/08/13.
//  Copyright (c) 2013 yeldi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>

@interface RGTransparentView : UIView
{
    CALayer                     *bottomTransparentLayer;
    
    UILabel                     *headingLabel;
    
    CALayer                     *topLineLayer;
    
    UIView                      *Subview;
    
}

@property (nonatomic,strong)   UILabel          *headingLabel;

@property (nonatomic,strong)   UIView          *Subview;

@end
