//
//  ViewController.h
//  day8_iOS_gestures
//
//  Created by Student 5 on 13/09/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "nextViewController.h"
@interface ViewController : UIViewController<UIGestureRecognizerDelegate,UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *myImage;
- (IBAction)handlePanGesture:(UIPanGestureRecognizer *)sender;
//@property UIScrollView *scrollView;
- (IBAction)zoomOut:(id)sender;
@property CGRect MyImageFrame;
@end

