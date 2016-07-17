//
//  MyAlbum.m
//  SpyBall
//
//  Created by lee on 2016. 7. 17..
//  Copyright © 2016년 lee. All rights reserved.
//

#import "MyAlbum.h"

@implementation MyAlbum


-(id) initWithTitile:(NSString*) title artist:( NSString*) artist summary:(NSString*)summary price:(float)price locationInStore:(NSString*) locationInStore
{
    self = [super init];
    
    if (self) {
        _title = title;
        _artist = artist;
        _summary = summary;
        _price = price;
        _locationInStore = locationInStore;
        
        return self;
    }
    return nil;
    
}

@end
