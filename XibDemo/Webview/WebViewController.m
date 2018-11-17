//
//  WebViewController.m
//  XibDemo
//
//  Created by zyj on 2018/11/14.
//  Copyright © 2018年 com.xxt.cn. All rights reserved.
//

#import "WebViewController.h"
#import <WebKit/WebKit.h>
@interface WebViewController ()<WKNavigationDelegate,WKUIDelegate>
@property (strong, nonatomic) UIScrollView *scrollview;

@property (strong, nonatomic) WKWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebViewConfiguration *config = [WKWebViewConfiguration new];
    //初始化偏好设置属性：preferences
//    config.preferences = [WKPreferences new];
//    //The minimum font size in points default is 0;
//    config.preferences.minimumFontSize = 10;
    //是否支持JavaScript
    config.preferences.javaScriptEnabled = YES;
    
    self.webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:config];
    self.webView.navigationDelegate = self;
    self.webView.UIDelegate = self;
    self.webView.scrollView.scrollEnabled = NO;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.5axxw.com/tools/web/web_run.html"]]];
    //开了支持滑动返回
//    self.webView.allowsBackForwardNavigationGestures = YES;
    [self.view addSubview:self.webView];
    
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.bottom.and.right.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuide);
    }];
    
//    NSString *urlStr = @"https://m.xxt.cn/privacy-policy/stuinfo-collsys-policy.htm";
//    // 加载URL
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:60];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    __block CGFloat webViewHeight;
    
    //获取内容实际高度（像素）@"document.getElementById(\"content\").offsetHeight;"
    [webView evaluateJavaScript:@"document.body.scrollHeight" completionHandler:^(id _Nullable result,NSError * _Nullable error) {
        // 此处js字符串采用scrollHeight而不是offsetHeight是因为后者并获取不到高度，看参考资料说是对于加载html字符串的情况下使用后者可以，但如果是和我一样直接加载原站内容使用前者更合适
        //获取页面高度，并重置webview的frame
        webViewHeight = [result doubleValue];
        
//        self.webView.frame = CGRectMake(0, 0, self.view.frame.size.width, webViewHeight);
//
//        [self.webView setNeedsLayout];
    }];
}

//- (void)webViewDidFinishLoad:(UIWebView *)webView
//{
//
//    CGSize fittingSize = [webView sizeThatFits:CGSizeZero];
//
//    NSString *allHtml = @"document.documentElement.innerHTML";
//    NSString *allHtmlInfo = [webView stringByEvaluatingJavaScriptFromString:allHtml];
//
////    NSString * htmlcontent = [NSString stringWithFormat:@"<div id=\"webview_content_wrapper\">%@</div>", allHtmlInfo];
////
////    [self.webview loadHTMLString:htmlcontent baseURL:nil];
//
//    CGFloat height = [[webView stringByEvaluatingJavaScriptFromString:@"document.body.scrollHeight"] floatValue];
////    self.webview.frame=CGRectMake(0, 0, self.view.frame.size.width,height);
//
//    CGSize frame = [webView sizeThatFits:webView.frame.size];
//
//    NSString * height_str= [webView stringByEvaluatingJavaScriptFromString: @"document.getElementById('webview_content_wrapper').offsetHeight + parseInt(window.getComputedStyle(document.getElementsByTagName('body')[0]).getPropertyValue('margin-top'))  + parseInt(window.getComputedStyle(document.getElementsByTagName('body')[0]).getPropertyValue('margin-bottom'))"];
//
//    float hh = [height_str floatValue];
//
//    //内容实际高度（像素）* 点和像素的比
//
//    hh = hh * frame.height / height;
//}

@end
