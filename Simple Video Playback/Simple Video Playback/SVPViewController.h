//
//  SVPViewController.h
//  Simple Video Playback
//
//  Created by Robert Crooks on 10/9/13.
//  Copyright (c) 2013 Brightcove. All rights reserved.
//

#import <UIKit/UIKit.h>

// forward references for facade protocol and video cloud manager classes
@protocol BCOVPlaybackFacade;
@class BCOVPlayerSDKManager;

@interface SVPViewController : UIViewController

// declare the facade and Video Cloud Manager properties
@property (strong, nonatomic) id<BCOVPlaybackFacade> facade;
@property (strong, nonatomic) BCOVPlayerSDKManager *manager;

@end

