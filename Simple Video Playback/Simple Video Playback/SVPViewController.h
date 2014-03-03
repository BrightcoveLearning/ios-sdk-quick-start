//
//  SVPViewController.h
//  Simple Video Playback
//
//  Created by Jeff T Doktor on 2/28/14.
//  Copyright (c) 2014 Brightcove. All rights reserved.
//

#import <UIKit/UIKit.h>

// import the SDK master header
#import <BCOVPlayerSDK.h>

@interface SVPViewController : UIViewController <BCOVPlaybackControllerDelegate>

@property (strong, nonatomic) id<BCOVPlaybackController> controller;

@end
