package stdgo._internal.regexp;
function _special(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L716"
        return ((_b < (128 : stdgo.GoUInt8) : Bool) && ((stdgo._internal.regexp.Regexp__specialbytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
    }
