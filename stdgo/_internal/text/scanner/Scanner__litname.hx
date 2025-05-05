package stdgo._internal.text.scanner;
function _litname(_prefix:stdgo.GoInt32):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L486"
        {
            final __value__ = _prefix;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L490"
                return ("hexadecimal literal" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((48 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L492"
                return ("octal literal" : stdgo.GoString);
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L494"
                return ("binary literal" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L488"
                return ("decimal literal" : stdgo.GoString);
            };
        };
    }
