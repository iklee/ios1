//
//  MyAlbumDataController.m
//  SpyBall
//
//  Created by lee on 2016. 7. 17..
//  Copyright © 2016년 lee. All rights reserved.
//

#import "MyAlbumDataController.h"
#import "MyAlbum.h"


@interface MyAlbumDataController ()
@property (nonatomic, readonly) NSMutableArray * albumList;
- (void) initializeDefaultAlbums;

@end

@implementation MyAlbumDataController


- (id) init {
    self = [super init];
    
    if(self){
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    return nil;
}


- (void) initializeDefaultAlbums{
    NSString * pathToAlbumsPlist = [[NSBundle mainBundle] pathForResource:@"MyAlbumArray" ofType:@"plist"];
    
    NSArray * defaultAlbumPlist = [NSArray arrayWithContentsOfFile:pathToAlbumsPlist];
    
    for (NSDictionary * albuminfo in defaultAlbumPlist){
        [self addAlbumWithTitile:albuminfo[@"title"] artist:albuminfo[@"artist"] summary:albuminfo[@"summary"] price:[albuminfo[@"price"] floatValue]locationInStore:albuminfo[@"locationInStore"]];
    }
    
}



- (NSUInteger) albumCount{
    return [self.albumList count];
    
}
- (MyAlbum *) albumAtIndex: (NSUInteger) index{
    return [self.albumList objectAtIndex:index];
    
}
- (void) addAlbumWithTitile: (NSString*) title artist:(NSString*)artist summary:(NSString*)summary price:(float)price locationInStore:(NSString*) locationInStore{
    
    MyAlbum * newAlbum = [[MyAlbum alloc] initWithTitile:title artist:artist summary:summary price:price locationInStore:locationInStore];
    [self.albumList addObject:newAlbum];
    
    
}
@end
