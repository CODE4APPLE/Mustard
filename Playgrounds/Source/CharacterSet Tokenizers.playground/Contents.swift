/**
Note: To use framework in a playground, the playground must be opened in a workspace that has the framework.
 
 If you recieve the error *"Playground execution failed: error: no such module 'Mustard'"* then run Project -> Build (⌘B).
*/

import Foundation
import Mustard

let str = "Hello, playground 2017"

let words = str.components(matchedWith: .letters)
// words.count -> 2
// words = ["hello", "playground"]

let tokens = "123Hello world&^45.67".tokens(matchedWith: .decimalDigits, .letters)

for token in tokens {
    switch token.tokenizer {
    case CharacterSet.decimalDigits:
        print("- digits:", token.text)
        
    case CharacterSet.letters:
        print("- letters:", token.text)
    default: break
    }
}
