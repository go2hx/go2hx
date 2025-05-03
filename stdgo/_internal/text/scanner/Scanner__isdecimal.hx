package stdgo._internal.text.scanner;
function _isDecimal(_ch:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L363"
        return (((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool);
    }
