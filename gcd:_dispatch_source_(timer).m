// gcd:_dispatch_source_(timer)
// Execute code when a periodic timer fires.
//
// gcd: _dispatch_source_(timer)
// IDECodeSnippetCompletionPrefix: dispatch_source timer
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 453CA73E-10B2-418B-A97A-6603821226F9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, <#dispatchQueue#>);
dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, <#intervalInSeconds#> * NSEC_PER_SEC, <#leewayInSeconds#> * NSEC_PER_SEC);
dispatch_source_set_event_handler(timer, ^{
    <#code to be executed when timer fires#>
});
dispatch_resume(timer);
