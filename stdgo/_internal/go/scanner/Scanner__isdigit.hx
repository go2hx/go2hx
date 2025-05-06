package stdgo._internal.go.scanner;
function _isDigit(_ch:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L314"
        return (stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal(_ch) || ((_ch >= (128 : stdgo.GoInt32) : Bool) && stdgo._internal.unicode.Unicode_isdigit.isDigit(_ch) : Bool) : Bool);
    }
