package stdgo._internal.bytes;
function clone(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1366"
        if (_b == null) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1367"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1369"
        return ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
