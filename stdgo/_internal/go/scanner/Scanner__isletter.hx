package stdgo._internal.go.scanner;
function _isLetter(_ch:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L310"
        return (((((97 : stdgo.GoInt32) <= stdgo._internal.go.scanner.Scanner__lower._lower(_ch) : Bool) && (stdgo._internal.go.scanner.Scanner__lower._lower(_ch) <= (122 : stdgo.GoInt32) : Bool) : Bool) || _ch == ((95 : stdgo.GoInt32)) : Bool) || ((_ch >= (128 : stdgo.GoInt32) : Bool) && stdgo._internal.unicode.Unicode_isletter.isLetter(_ch) : Bool) : Bool);
    }
