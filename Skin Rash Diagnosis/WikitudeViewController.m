//
//  WikitudeViewController.m
//  AppSquadJavascriptWikitudeSwift
//
//  Created by Sneha Kasetty Sudarshan on 5/7/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

#import "WikitudeViewController.h"

#import <WikitudeSDK/WikitudeSDK.h>
/* Wikitude SDK debugging */
#import <WikitudeSDK/WTArchitectViewDebugDelegate.h>



@interface WikitudeViewController () <WTArchitectViewDelegate, WTArchitectViewDebugDelegate>

/* Add a strong property to the main Wikitude SDK component, the WTArchitectView */
@property (nonatomic, strong) WTArchitectView               *architectView;

/* And keep a weak property to the navigation object which represents the loading status of your Architect World */
@property (nonatomic, weak) WTNavigation                    *architectWorldNavigation;

@property (nonatomic, strong) NSString *st1;

@end

@implementation WikitudeViewController

@synthesize st1=st1;

- (void)dealloc
{
    /* Remove this view controller from the default Notification Center so that it can be released properly */
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /* It might be the case that the device which is running the application does not fulfil all Wikitude SDK hardware requirements. To check for this and handle the situation properly, use the -isDeviceSupportedForRequiredFeatures:error class method. Required features specify in more detail what your Architect World intends to do. Depending on your intentions, more or less devices might be supported. e.g. an iPod Touch is missing some hardware components so that Geo augmented reality does not work, but 2D tracking does. NOTE: On iOS, an unsupported device might be an iPhone 3GS for image recognition or an iPod Touch 4th generation for Geo augmented reality. */
    NSError *deviceSupportError = nil;
    if ( [WTArchitectView isDeviceSupportedForRequiredFeatures:WTFeature_2DTracking error:&deviceSupportError] ) {
        
        /* Standard WTArchitectView object creation and initial configuration */
        self.architectView = [[WTArchitectView alloc] initWithFrame:CGRectZero motionManager:nil];
        self.architectView.delegate = self;
        self.architectView.debugDelegate = self;
        
        
        /* Use the -setLicenseKey method to unlock all Wikitude SDK features that you bought with your license. */
        [self.architectView setLicenseKey:@"mDHiydO/5xgKta37zxVJS7rjWvJwcKAW7byBB8bziDX6GqEfj9tVuHQ7q2VF8yPY4qpuViIeL77+yYpZwjnRgiGdfad2H6CRhGiftL8IhxAanTHwXI1Rc7io17a3CFbE1eZrOhWzmTVbubAhXvou28eAE7GVYP00ksnMmWel7A9TYWx0ZWRfX2KosVhAU63+DeIUld8K24SEGizzBW4mVJZGeJzMzQFggZlxxeivfMkiABD21o4vVbaPhqyWt8IW/tKCgM0Hamp2SgHY/3kcsLVoQgQ6XcSnBT1v80x7e8FnoqbBHsta4ud0T5m6U9r7alg3BhD//o/MQuiwCR5zuPO2dagAj07a0w1hz71N3+/Og1UcMLapuk6AyAUObKOPJgqQf+j8Cot9DZdMLzc6ctTi0Z/f2OJwWaYgypRelMTzIpZJ5jbNQUyvB8fpC1+Y4Pj/LFcXRwIb4d5FMKijJlpFv5lp+tv9obVMVmXMJfps5ZlHT/Hc5ZsjW+VXn1aCrmYKPq4WPik+FPyBwSXYbvEqHYClm05d7T3YkiTb1cuTxEJuSBi0BdVVAt5d5xl8sg8koKKmpXoiB9+BEnB6Y0gct6aSAiLQ3EcUIif+Ni3kyj1JMRm2iJcINIRbK/EBEPcaESprOwBMSgQxYRMqum+XbQsBcvsMZdDeWa9nJV9ES2juD0P+c+cQt046R5vmq8fl2dj1SvK6ix3LsWl6XQ=="];
        
        /* The Architect World can be loaded independently from the WTArchitectView rendering. NOTE: The architectWorldNavigation property is assigned at this point. The navigation object is valid until another Architect World is loaded. */
        
        self.st1 = @"yes";
        
        if ([st1 isEqualToString:@"yes"])
        {
        self.architectWorldNavigation = [self.architectView loadArchitectWorldFromURL:[[NSBundle mainBundle] URLForResource:@"indexsevere" withExtension:@"html" subdirectory:@"ArchitectWorld"] withRequiredFeatures:WTFeature_2DTracking];
        }
        else
        {
        self.architectWorldNavigation = [self.architectView loadArchitectWorldFromURL:[[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html" subdirectory:@"ArchitectWorld"] withRequiredFeatures:WTFeature_2DTracking];
            
        }
        /* Because the WTArchitectView does some OpenGL rendering, frame updates have to be suspended and resumend when the application changes it's active state. Here, UIApplication notifications are used to respond to the active state changes. NOTE: Since the application will resign active even when an UIAlert is shown, some special handling is implemented in the UIApplicationDidBecomeActiveNotification. */
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didReceiveApplicationWillResignActiveNotification:) name:UIApplicationWillResignActiveNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didReceiveApplicationDidBecomeActiveNotification:) name:UIApplicationDidBecomeActiveNotification object:nil];
        
        /* Standard subview handling using Autolayout */
        [self.view addSubview:self.architectView];
        self.architectView.translatesAutoresizingMaskIntoConstraints = NO;
        
        NSDictionary *views = NSDictionaryOfVariableBindings(_architectView);
        [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"|[_architectView]|" options:0 metrics:nil views:views] ];
        [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_architectView]|" options:0 metrics:nil views:views] ];
    }
    else {
        NSLog(@"This device is not supported. Show either an alert or use this class method even before presenting the view controller that manages the WTArchitectView. Error: %@", [deviceSupportError localizedDescription]);
    }
}

#pragma mark - View Lifecycle
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
    
    /* WTArchitectView rendering is started once the view controllers view will appear */
    [self startWikitudeSDKRendering];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    /* WTArchitectView rendering is stopped once the view controllers view did disappear */
    [self stopWikitudeSDKRendering];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - View Rotation
- (BOOL)shouldAutorotate {
    
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskAll;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    /* When the device orientation changes, specify if the WTArchitectView object should rotate as well */
    [self.architectView setShouldRotate:YES toInterfaceOrientation:toInterfaceOrientation];
}

#pragma mark - Private Methods

/* Convenience methods to manage WTArchitectView rendering. */
- (void)startWikitudeSDKRendering{
    
    /* To check if the WTArchitectView is currently rendering, the isRunning property can be used */
    if ( ![self.architectView isRunning] ) {
        
        /* To start WTArchitectView rendering and control the startup phase, the -start:completion method can be used */
        [self.architectView start:^(WTStartupConfiguration *configuration) {
            
            /* Use the configuration object to take control about the WTArchitectView startup phase */
            /* You can e.g. start with an active front camera instead of the default back camera */
            
            // configuration.captureDevicePosition = AVCaptureDevicePositionFront;
            
        } completion:^(BOOL isRunning, NSError *error) {
            
            /* The completion block is called right after the internal start method returns. NOTE: In case some requirements are not given, the WTArchitectView might not be started and returns NO for isRunning. To determine what caused the problem, the localized error description can be used. */
            if ( !isRunning ) {
                NSLog(@"WTArchitectView could not be started. Reason: %@", [error localizedDescription]);
            }
        }];
    }
}

- (void)stopWikitudeSDKRendering {
    
    /* The stop method is blocking until the rendering and camera access is stopped */
    if ( [self.architectView isRunning] ) {
        [self.architectView stop];
    }
}

/* The WTArchitectView provides two delegates to interact with. */
#pragma mark - Delegation

/* The standard delegate can be used to get information about: * The Architect World loading progress * The method callback for AR.platform.sendJSONObject caught by -architectView:receivedJSONObject: * Managing view capturing * Customizing view controller presentation that is triggered from the WTArchitectView */
#pragma mark WTArchitectViewDelegate
- (void)architectView:(WTArchitectView *)architectView didFinishLoadArchitectWorldNavigation:(WTNavigation *)navigation {
    /* Architect World did finish loading */
}

- (void)architectView:(WTArchitectView *)architectView didFailToLoadArchitectWorldNavigation:(WTNavigation *)navigation withError:(NSError *)error {
    
    NSLog(@"Architect World from URL '%@' could not be loaded. Reason: %@", navigation.originalURL, [error localizedDescription]);
}

/* The debug delegate can be used to respond to internal issues, e.g. the user declined camera or GPS access. NOTE: The debug delegate method -architectView:didEncounterInternalWarning is currently not used. */
#pragma mark WTArchitectViewDebugDelegate
- (void)architectView:(WTArchitectView *)architectView didEncounterInternalWarning:(WTWarning *)warning {
    
    /* Intentionally Left Blank */
}

- (void)architectView:(WTArchitectView *)architectView didEncounterInternalError:(NSError *)error {
    
    NSLog(@"WTArchitectView encountered an internal error '%@'", [error localizedDescription]);
}

#pragma mark - Notifications
/* UIApplication specific notifications are used to pause/resume the architect view rendering */
- (void)didReceiveApplicationWillResignActiveNotification:(NSNotification *)notification
{
    dispatch_async(dispatch_get_main_queue(), ^{
        /* Standard WTArchitectView rendering suspension when the application resignes active */
        [self stopWikitudeSDKRendering];
    });
}

- (void)didReceiveApplicationDidBecomeActiveNotification:(NSNotification *)notification
{
    dispatch_async(dispatch_get_main_queue(), ^{
        
        /* When the application starts for the first time, several UIAlert's might be shown to ask the user for camera and/or GPS access. Because the WTArchitectView is paused when the application resigns active (See line 86), also Architect JavaScript evaluation is interrupted. To resume properly from the inactive state, the Architect World has to be reloaded if and only if an active Architect World load request was active at the time the application resigned active. This loading state/interruption can be detected using the navigation object that was returned from the -loadArchitectWorldFromURL:withRequiredFeatures method. */
        if ( self.architectWorldNavigation.wasInterrupted )
        {
            [self.architectView reloadArchitectWorld];
        }
        
        /* Standard WTArchitectView rendering resuming after the application becomes active again */
        [self startWikitudeSDKRendering];
    });
}



@end
