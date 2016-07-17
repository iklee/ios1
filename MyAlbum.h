//
//  MyAlbum.h
//  SpyBall
//
//  Created by lee on 2016. 7. 17..
//  Copyright © 2016년 lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyAlbum : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *locationInStore;

@property (nonatomic, assign) float price;

-(id) initWithTitile:(NSString*) title artist:( NSString*) artist summary:(NSString*)summary price:(float)price locationInStore:(NSString*) locationInStore;

@end
