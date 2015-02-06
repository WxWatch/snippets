// oh
// changes 3.0
//
// IDECodeSnippetCompletionPrefix: rfoh
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 5A43ABAA-CAA7-4A9C-9A43-F81A4A268599
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
  
    __block IDECodeSnippet *blockSnippet = snippet;
    __weak typeof(self)weakSelf = self;
    
    NSBlockOperation *blockOperation = [NSBlockOperation blockOperationWithBlock:^{
        
        NSLog(@"%@ removeCodeSnippet: %@", weakSelf, snippet);
        
        [weakSelf removeAllFilesInLocalRepositoryForSnippet:blockSnippet];
        [weakSelf.gitRepository commit];
        [weakSelf.gitRepository push];
    }];
    [self.mainQueue addOperation:blockOperation];
}

- (void)syncCodeSnippets {
    if (!self.gitRepository) return;
    
    __weak typeof(self)weakSelf = self;
    
    NSBlockOperation *blockOperation = [NSBlockOperation blockOperationWithBlock:^{
