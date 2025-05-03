package stdgo._internal.strings;
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/compare.go#L21"
        if (_a == (_b)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/compare.go#L22"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/compare.go#L24"
        if ((_a < _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/compare.go#L25"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/compare.go#L27"
        return (1 : stdgo.GoInt);
    }
