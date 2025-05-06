package stdgo._internal.go.scanner;
function _digitVal(_ch:stdgo.GoInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L368"
        if ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L370"
            return ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        } else if ((((97 : stdgo.GoInt32) <= stdgo._internal.go.scanner.Scanner__lower._lower(_ch) : Bool) && (stdgo._internal.go.scanner.Scanner__lower._lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L372"
            return (((stdgo._internal.go.scanner.Scanner__lower._lower(_ch) - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L374"
        return (16 : stdgo.GoInt);
    }
