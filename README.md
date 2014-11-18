# DKTagCloudView
![GIF](https://raw.githubusercontent.com/zhangao0086/DKTagCloudView/master/preview1.gif)
![GIF](https://raw.githubusercontent.com/zhangao0086/DKTagCloudView/master/preview2.gif)
## Overview
DKTagCloudView is a tag clouds view on iOS.

## How To Get Started

Add `#import "DKTagCloudView.h"` to the top of classes that will use it.  
Create instances (Also supports xib/storyboard) :

``` objective-c
DKTagCloudView *tagCloudView = [[DKTagCloudView alloc] initWithFrame:CGRectMake(0, 64,
                                                                                self.view.bounds.size.width,
                                                                                self.view.bounds.size.height - 64)];
[self.view addSubview:tagCloudView];
self.tagCloudView = tagCloudView;
```

Setup items:

``` objective-c
self.tagCloudView.titls = @[
                            @"DKTagCloudView",
                            @"minFontSize",
                            @"maxFontSize",
                            @"randomColors",
                            @"generate",
                            @"UIView",
                            @"NSInteger",
                            @"Min font size",
                            @"Max font size",
                            @"DKTagCloudViewDemo",
                            @"This is a test"
                            ];
```

Generates:
``` objective-c
[self.tagCloudView generate];
```