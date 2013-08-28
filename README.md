RGTransparentView
=================

Yahoo Weather Inspired View

This is a very simple view, of how its done, it can be done in much better ways. if anybody can contribute 
to it, its very much helpful.

Simply Use the RGTransparentView to your Project, and import in the project that is required

![Alt text](/RGTransparentDemo/images.png "Demo Image")

USAGE:
-------
RGTransparentView *rgPointView = [[RGTransparentView alloc] initWithFrame:CGRectMake(5, height, 310, 125)];
    
rgPointView.headingLabel.text =@"Header";

[self.view addSubview:rgPointView];
    
UIView *subview = [[UIView alloc] init]; //create a simple View 

rgPointView.Subview.frame = CGRectMake(5, 35, 310, 80); // Then set the subviews frame
    
[rgPointView.Subview addSubview:subview];   // Then add it as a subview to the RGTransparentView


CAVEATS:
--------

1. This project doesnot include ARC and NON-ARC compatability

2. The  Parent Views frame doesnot adjust to the subviews content, so if people can contribute to it would be helpful

