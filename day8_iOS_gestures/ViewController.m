//
//  ViewController.m
//  day8_iOS_gestures
//
//  Created by Student 5 on 13/09/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.MyImageFrame=self.myImage.frame;
    
//    self.scrollView.minimumZoomScale=0.5;
//    self.scrollView.maximumZoomScale=6.0;
//    self.scrollView.contentSize=self.myImage.frame.size;
//   self.scrollView.delegate=self;
    
    UITapGestureRecognizer *singleTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap:)];
    singleTap.numberOfTapsRequired=3;
    [self.view addGestureRecognizer:singleTap];
    
    UISwipeGestureRecognizer *leftSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleLeftSwipe)];
    leftSwipe.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:leftSwipe];
    
    UISwipeGestureRecognizer *rightSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleRightSwipe)];
    rightSwipe.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:rightSwipe];
    
    UITapGestureRecognizer *imageTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleImageTap:)];
    imageTap.numberOfTapsRequired=2;
    [self.myImage addGestureRecognizer:imageTap];
    
//    self.scrollView.minimumZoomScale=0.5;
//        self.scrollView.maximumZoomScale=6.0;
//        self.scrollView.contentSize=self.myImage.frame.size;
//       self.scrollView.delegate=self;
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handlezoomInTap:)];
    [doubleTap setNumberOfTapsRequired:1];
    [self.myImage addGestureRecognizer:doubleTap];
    

    
   // UITapGestureRecognizer *zoomIn=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlezoomIn:)];
    


    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)handleTap:(UIGestureRecognizer *)sender
{
    self.view.backgroundColor=[UIColor cyanColor];
}

-(void)handleLeftSwipe
{
    self.view.backgroundColor=[UIColor blueColor];
}

-(void)handleRightSwipe
{
    self.view.backgroundColor=[UIColor greenColor];
}

-(void)handleImageTap:(UIGestureRecognizer *)sender
{
//    nextViewController *nvc=[self.storyboard instantiateViewControllerWithIdentifier:@"nextViewController"];
//    [self.navigationController pushViewController:nvc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)handlePanGesture:(UIPanGestureRecognizer *)sender
{
    CGPoint translation=[sender translationInView:self.view];
    sender.view.center=CGPointMake(sender.view.center.x+translation.x,sender.view.center.y+translation.y);
    [sender setTranslation:CGPointMake(0, 0) inView:self.view];
    
}

- (void)handlezoomInTap:(UIGestureRecognizer *)gestureRecognizer
{
    
    
        //[self.scrollView setZoomScale:self.scrollView.minimumZoomScale animated:YES];
        self.myImage.frame=CGRectMake(self.myImage.frame.origin.x-20, self.myImage.frame.origin.y-20, self.myImage.frame.size.width+50, self.myImage.frame.size.height+50);
}



- (IBAction)zoomOut:(id)sender
{
    self.myImage.frame=self.MyImageFrame;
}
@end
