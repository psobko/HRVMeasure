//
//  AppDelegate.m
//  HRVMeasure
//
//  Created by Peter Sobkowski on 2016-10-24.
//  Copyright © 2016 psobko. All rights reserved.
//

#import "AppDelegate.h"
#import "HRVFeatureCalculator.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSArray *d1 = @[@(59.999996),@(29.999998),@(40.000000),@(59.999996),@(60.000000),@(70.000000),@(68.571426),@(67.500000),@(73.333328),@(78.000000),@(76.363632),@(75.000000),@(73.846153),@(77.142860),@(80.000000),@(78.749992),@(81.176468),@(80.000000),@(78.947372),@(78.000000),@(80.000000),@(79.090904),@(78.260872),@(77.500000),@(79.200005),@(80.769234),@(80.000000),@(81.428574),@(80.689659),@(82.000000),@(81.290321),@(82.499992),@(83.636360),@(82.941177),@(82.285721),@(83.333328),@(82.702705),@(83.684212),@(83.076927),@(84.000000),@(83.414635),@(84.285713),@(83.720932),@(83.181816),@(84.000000),@(83.478264),@(82.978722),@(83.750000),@(83.265305),@(82.800003),@(83.529411),@(83.076920),@(83.773582),@(83.333336),@(82.909088),@(82.500000),@(83.157898),@(82.758621),@(82.372879),@(82.000000)];
    
  NSArray *d2 = @[@(59.999996),@(29.999998),@(80.000000),@(74.999992),@(72.000000),@(70.000000),@(77.142860),@(74.999992),@(66.666664),@(72.000000),@(76.363632),@(75.000000),@(73.846153),@(77.142860),@(72.000000),@(71.250000),@(74.117645),@(73.333328),@(75.789474),@(72.000000),@(74.285713),@(73.636360),@(75.652176),@(72.500000),@(72.000000),@(73.846153),@(73.333336),@(75.000000),@(74.482758),@(74.000000),@(73.548386),@(73.125000),@(74.545456),@(74.117645),@(73.714287),@(71.666664),@(71.351349),@(71.052635),@(72.307693),@(72.000000),@(71.707314),@(72.857147),@(72.558144),@(70.909088),@(70.666664),@(70.434784),@(71.489357),@(71.250000),@(71.020409),@(70.800003),@(71.764702),@(70.384613),@(70.188683),@(70.000000),@(70.909088),@(70.714287),@(71.578949),@(70.344833),@(70.169487),@(71.000000)];
    
   NSArray *d3 = @[@(119.999992),@(29.999998),@(80.000000),@(74.999992),@(72.000000),@(70.000000),@(68.571426),@(74.999992),@(73.333328),@(72.000000),@(70.909088),@(70.000000),@(69.230766),@(68.571426),@(68.000000),@(67.500000),@(67.058823),@(70.000000),@(69.473686),@(69.000000),@(68.571426),@(68.181816),@(67.826088),@(70.000000),@(69.599998),@(69.230766),@(68.888893),@(68.571426),@(68.275864),@(68.000000),@(67.741936),@(69.375000),@(69.090904),@(68.823532),@(68.571434),@(68.333328),@(69.729729),@(69.473686),@(69.230774),@(69.000000),@(68.780487),@(68.571426),@(69.767441),@(69.545456),@(69.333336),@(69.130440),@(68.936165),@(68.750000),@(69.795921),@(69.599998),@(69.411766),@(69.230766),@(69.056602),@(68.888893),@(68.727272),@(69.642860),@(69.473686),@(69.310349),@(69.152542),@(70.000000)];
    
    NSLog(@"Sample1 AVNN:%f SDNN:%f RMSSSD:%f PNN50:%f",[HRVFeatureCalculator AVNNForIntervals:d1],
          [HRVFeatureCalculator SDNNForIntervals:d1],
          [HRVFeatureCalculator RMSSSDForIntervals:d1],
          [HRVFeatureCalculator PNN50ForIntervals:d1]);
    
    NSLog(@"Sample2 AVNN:%f SDNN:%f RMSSSD:%f PNN50:%f",[HRVFeatureCalculator AVNNForIntervals:d2],
          [HRVFeatureCalculator SDNNForIntervals:d2],
          [HRVFeatureCalculator RMSSSDForIntervals:d2],
          [HRVFeatureCalculator PNN50ForIntervals:d2]);
    
    NSLog(@"Sample31 AVNN:%f SDNN:%f RMSSSD:%f PNN50:%f",[HRVFeatureCalculator AVNNForIntervals:d3],
          [HRVFeatureCalculator SDNNForIntervals:d3],
          [HRVFeatureCalculator RMSSSDForIntervals:d3],
          [HRVFeatureCalculator PNN50ForIntervals:d3]);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
