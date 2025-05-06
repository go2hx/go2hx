package stdgo._internal.go.scanner;
function _isHex(_ch:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L379"
        return ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= stdgo._internal.go.scanner.Scanner__lower._lower(_ch) : Bool) && (stdgo._internal.go.scanner.Scanner__lower._lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
