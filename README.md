# Objective-C Lorem Ipsum Generator and Inspirational quotes provider

## About


A very simple and not very clever class that generates N words of lorem ipsum text.
New version also provides random inspirational quotes.

Maybe this will save you the 15 minutes I spent writing it. I based it from http://www.ruby-forum.com/topic/101574

## Example
   #import "LoremIpsum.h"

    NSString* defaultText = [LoremIpsum words:15];
    _textView.text = defaultText;
    
    NSString* quoteText = [LoremIpsum getQuote];
    _quoteView.text = quoteText;

## License

Public domain where appropriate; free for everyone, for all usages, elsewhere.
