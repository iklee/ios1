//
//  MyAlbumDataController.h
//  SpyBall
//
//  Created by lee on 2016. 7. 17..
//  Copyright © 2016년 lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MyAlbum;

@interface MyAlbumDataController : NSObject

- (NSUInteger) albumCount;
- (MyAlbum *) albumAtIndex: (NSUInteger) index;
- (void) addAlbumWithTitile: (NSString*) title artist:(NSString*)artist summary:(NSString*)summary price:(float)price locationInStore:(NSString*) locationInStore;


@end
