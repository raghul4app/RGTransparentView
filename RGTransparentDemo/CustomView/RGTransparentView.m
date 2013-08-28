//
//  RGTransparentView.m
//  AraProject
//
//  Created by YELDI_EMP on 27/08/13.
//  Copyright (c) 2013 yeldi. All rights reserved.
//

#import "RGTransparentView.h"

@implementation RGTransparentView

@synthesize headingLabel;

@synthesize Subview;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        bottomTransparentLayer = [CALayer layer];
        
        NSLog(@"frame======%@",NSStringFromCGRect(frame));
        
      //  bottomTransparentLayer.frame = [self convertRect:frame toView:self];
        bottomTransparentLayer.backgroundColor = [UIColor blackColor].CGColor;
        bottomTransparentLayer.opacity = 0.4;
        bottomTransparentLayer.cornerRadius = 2.0f;
        
        
        [self.layer addSublayer:bottomTransparentLayer];
        
        self.headingLabel = [[UILabel alloc] init];
         self.headingLabel.backgroundColor = [UIColor clearColor];
         self.headingLabel.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
         self.headingLabel.textColor = [UIColor whiteColor];
       // [self addSubview: self.headingLabel];
        
        [self.layer addSublayer:self.headingLabel.layer];
        
            
        topLineLayer = [CALayer layer];
        topLineLayer.borderColor = [UIColor whiteColor].CGColor;
        topLineLayer.borderWidth = 1;
        //topLineLayer.frame = CGRectMake(8, 25, 296,1);
        
        [self.layer addSublayer:topLineLayer];
        
        
        Subview = [[UIView alloc] init];
        [self addSubview:Subview];
            

        
    }
    return self;
}

- (void)layoutSubviews {
    // resize your layers based on the view's new bounds
    bottomTransparentLayer.frame = self.bounds;
    self.headingLabel.frame = CGRectMake(self.bounds.origin.x+10, self.bounds.origin.y -18, 120, 60);
    
    topLineLayer.frame = CGRectMake(6, 25, 298,1);
    //Subview.frame = CGRectMake(self.bounds.origin.x+4, self.bounds.origin.y+35, bottomTransparentLayer.frame.size.width-10,bottomTransparentLayer.frame.size.height-10);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
