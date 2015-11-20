#import "DeviceUtil.h"
#import "RCTBridge.h"
#import "RCTUtils.h"

@implementation DeviceUtil

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (NSDictionary *)constantsToExport {
  NSString *model = [[UIDevice currentDevice] model];
  NSString *name = [[UIDevice currentDevice] name];
  NSString *systemName = [[UIDevice currentDevice] systemName];
  NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
  NSString *systenLanguage = [[NSLocale preferredLanguages] objectAtIndex:0];

  return @{
    @"model" : (model),
    @"name" : (name),
    @"systemName" : (systemName),
    @"systemVersion" : (systemVersion),
    @"systemLanguage" : (systemLanguage)
  };
}

@end
