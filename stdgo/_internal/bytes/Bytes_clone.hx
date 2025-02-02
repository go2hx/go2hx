package stdgo._internal.bytes;
function clone(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (_b == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b : Array<stdgo.GoUInt8>)));
    }
