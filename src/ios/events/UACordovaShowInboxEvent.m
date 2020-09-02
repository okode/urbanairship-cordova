/* Copyright Urban Airship and Contributors */

#import "UACordovaShowInboxEvent.h"

NSString *const EventShowInbox = @"urbanairship.show_inbox";

@implementation UACordovaShowInboxEvent

+ (instancetype)event {
    return [[UACordovaShowInboxEvent alloc] init];
}

+ (instancetype)eventWithMessageID:(NSString *)identifier {
    return [[UACordovaShowInboxEvent alloc] initWithMessageID:identifier];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.type = EventShowInbox;
        self.data = nil;
    }
    return self;
}

- (instancetype)initWithMessageID:(NSString *)identifier {
    self = [super init];
    if (self) {
        self.type = EventShowInbox;
        self.data = @{@"messageId":identifier};
    }

    return self;
}

@end
