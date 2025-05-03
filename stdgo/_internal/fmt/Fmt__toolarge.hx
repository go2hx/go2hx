package stdgo._internal.fmt;
function _tooLarge(_x:stdgo.GoInt):Bool {
        {};
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L353"
        return ((_x > (1000000 : stdgo.GoInt) : Bool) || (_x < (-1000000 : stdgo.GoInt) : Bool) : Bool);
    }
