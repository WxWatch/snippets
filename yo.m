// Yo
// 
//
// IDECodeSnippetCompletionPrefix: YO
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A1B8BFA0-23CB-493F-BFB5-C898ED26A959
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
- (void)controlTextDidChange:(NSNotification *)notification {
    NSTextField *textField = [notification object];
    
    if (![[NSURL URLWithString:textField.stringValue] isEqualTo:self.gitDataStore.remoteRepositoryURL]) {
        self.forkRemoteRepositoryButton.enabled = YES;
    } else {
        self.forkRemoteRepositoryButton.enabled = YES;
    }
    
    if ([textField.stringValue length]) {
        self.importButton.enabled = YES;
    } else {
        self.importButton.enabled = NO;
    }
}