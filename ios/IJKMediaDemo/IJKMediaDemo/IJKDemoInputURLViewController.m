/*
 * Copyright (C) 2015 Gdier
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "IJKDemoInputURLViewController.h"
#import "IJKMoviePlayerViewController.h"

#import "HTY360PlayerVC.h"

@interface IJKDemoInputURLViewController () <UITextViewDelegate>

@property(nonatomic,strong) IBOutlet UITextView *textView;

@end

@implementation IJKDemoInputURLViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.title = @"Input URL";
        
        [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"Play" style:UIBarButtonItemStyleDone target:self action:@selector(onClickPlayButton)]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)onClickPlayButton {
    
//    NSURL *url = [NSURL URLWithString:/*self.textView.text*/@"rtmp://120.50.46.125:8081/live_hls/191120"];
//    NSString *scheme = [[url scheme] lowercaseString];
//    
////    if ([scheme isEqualToString:@"http"] || [scheme isEqualToString:@"https"]) {
//        [IJKVideoViewController presentFromViewController:self withTitle:[NSString stringWithFormat:@"URL: %@", url] URL:url completion:^{
////            [self.navigationController popViewControllerAnimated:NO];
//        }];
////    }
    
    
    
    
    //for 360
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"demo360video" ofType:@"mp4"];
//    NSURL *url = [[NSURL alloc] initFileURLWithPath:path];
    //  HTY360PlayerVC *videoController = [[HTY360PlayerVC alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:[NSURL URLWithString:@"https://d1ncy3j1ft9oyb.cloudfront.net/fBscGrp9rzAGyz56ifGHfi/apw2JgjtxuCSNoJLfWSjLK_0/eC7t8yzMQeUVtoo8LWkDpZ.mp4"]];
    HTY360PlayerVC *videoController = [[HTY360PlayerVC alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:[NSURL URLWithString:@"https://d1ncy3j1ft9oyb.cloudfront.net/fBscGrp9rzAGyz56ifGHfi/apw2JgjtxuCSNoJLfWSjLK_0/eC7t8yzMQeUVtoo8LWkDpZ.mp4"]];
    
//    [self.view insertSubview:videoController.view atIndex:0];
//    [self addChildViewController:videoController];
//    [videoController didMoveToParentViewController:self];
//    videoController.view.frame = self.view.bounds;
    
    if (![[self presentedViewController] isBeingDismissed]) {
        [self presentViewController:videoController animated:YES completion:nil];
        
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    [self onClickPlayButton];
}

@end
