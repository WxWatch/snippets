// yes
// yes
//
// IDECodeSnippetCompletionPrefix: notyesaaaa
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 20399FAD-DCB6-4A28-A3A1-0CD1DD8A9988
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
