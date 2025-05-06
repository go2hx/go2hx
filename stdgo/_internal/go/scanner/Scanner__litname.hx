package stdgo._internal.go.scanner;
function _litname(_prefix:stdgo.GoInt32):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L501"
        {
            final __value__ = _prefix;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L503"
                return ("hexadecimal literal" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((48 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L505"
                return ("octal literal" : stdgo.GoString);
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L507"
                return ("binary literal" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L509"
        return ("decimal literal" : stdgo.GoString);
    }
