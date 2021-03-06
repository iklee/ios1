//
//  DetailViewController.m
//  SpyBall
//
//  Created by lee on 2016. 7. 12..
//  Copyright © 2016년 lee. All rights reserved.
//

#import "DetailViewController.h"
#import "MyAlbum.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(MyAlbum*)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        //self.detailDescriptionLabel.text = [self.detailItem description];
        self.detailDescriptionLabel.text = self.detailItem.title;
        
    }
    //self.detailDescriptionLabel.text = @"hi";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
