//
//  SVPViewController.m
//  Simple Video Playback
//
//  Created by Robert Crooks on 11/25/13.
//  Copyright (c) 2013 Brightcove. All rights reserved.
//

#import <UIKit/UIKit.h>

// import the View Controller header
#import "SVPViewController.h"

// import the SDK master header
#import "BCOVPlayerSDK.h"

@interface SVPViewController ()

@end

@implementation SVPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// create an array of videos
    NSArray *videos = @[
                        [BCOVVideo videoWithURL:[NSURL URLWithString:@"http://cf9c36303a9981e3e8cc-31a5eb2af178214dc2ca6ce50f208bb5.r97.cf1.rackcdn.com/bigger_badminton_600.mp4"]],
                        [BCOVVideo videoWithURL:[NSURL URLWithString:@"http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"]]
                        ];
    
    // add the playback manager and facade
    self.manager = [BCOVPlayerSDKManager sharedManager];
    self.facade = [self.manager createPlaybackFacadeWithFrame:self.view.frame];
    
    // turn on auto-advance
    self.facade.queue.autoAdvance = YES;
    
    // add the facade view as a subview of the SVPViewController's view
    [self.view addSubview:self.facade.view];
    
    // add the video array to the facade's playback queue and play the first video
    [self.facade setVideos:videos];
    [self.facade advanceToNextAndPlay];
}

@end

