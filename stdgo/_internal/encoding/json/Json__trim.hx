package stdgo._internal.encoding.json;
function _trim(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) > (20 : stdgo.GoInt) : Bool)) {
            return (_b.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _b;
    }
