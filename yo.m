// yo
// 
//
// IDECodeSnippetIdentifier: 356FFA3C-31F3-41DA-96C1-967154B7A8B5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
<<<<<<< HEAD
// yo
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: FDE7A14D-E709-46C1-ACAE-18E5A74A42C7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
=======
// Yo man axe
// Now with description
//
// IDECodeSnippetCompletionPrefix: YODAWGGIT
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A1B8BFA0-23CB-493F-BFB5-C898ED26A959
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
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
>>>>>>> 62a865f62d99b726eefeb72451c47f359bd11bac
