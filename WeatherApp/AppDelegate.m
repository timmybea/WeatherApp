//
//  AppDelegate.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "AppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@interface AppDelegate ()

@property (nonatomic) UITabBarController *tabBarController;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    City *vancouver = [[City alloc] initWithCityName:@"Vancouver" weatherDescription:@"rainy" andTemperature:18];
    City *auckland = [[City alloc] initWithCityName:@"Auckland" weatherDescription:@"overcast" andTemperature:16];
    City *hongKong = [[City alloc] initWithCityName:@"Hong Kong" weatherDescription:@"Sunny" andTemperature:26];
    City *newYork = [[City alloc] initWithCityName:@"New York" weatherDescription:@"rainy" andTemperature:10];
    City *rome = [[City alloc] initWithCityName:@"Rome" weatherDescription:@"snowy" andTemperature:-5];
    
    //put cities in a view controller
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *aucklandVC = [[CityViewController alloc] initWithCity:auckland];
    CityViewController *hongKongVC = [[CityViewController alloc] initWithCity:hongKong];
    CityViewController *newYorkVC = [[CityViewController alloc] initWithCity:newYork];
    CityViewController *romeVC = [[CityViewController alloc] initWithCity:rome];
    
    //put view controllers into nav
    UINavigationController *vancouverNavCon = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController *aucklandNavCon = [[UINavigationController alloc] initWithRootViewController:aucklandVC];
    UINavigationController *hongKongNavCon = [[UINavigationController alloc] initWithRootViewController:hongKongVC];
    UINavigationController *newYorkNavCon = [[UINavigationController alloc] initWithRootViewController:newYorkVC];
    UINavigationController *romeNavCon = [[UINavigationController alloc] initWithRootViewController:romeVC];
    
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[vancouverNavCon, aucklandNavCon, hongKongNavCon, newYorkNavCon, romeNavCon];


    
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];

    
    //    romeNavCon.tabBarItem.title = @"hello";

    
    
    return YES;
}

@end
