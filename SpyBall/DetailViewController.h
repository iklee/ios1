//
//  DetailViewController.h
//  SpyBall
//
//  Created by lee on 2016. 7. 12..
//  Copyright © 2016년 lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyAlbum;

@interface DetailViewController : UIViewController

//@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) MyAlbum *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

