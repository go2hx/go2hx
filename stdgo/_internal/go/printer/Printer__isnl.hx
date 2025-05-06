package stdgo._internal.go.printer;
function _isNL(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L169"
        return ((_b == (10 : stdgo.GoUInt8)) || (_b == (12 : stdgo.GoUInt8)) : Bool);
    }
