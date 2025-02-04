package stdgo._internal.bytes;
function hasSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return (((_s.length) >= (_suffix.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _suffix) : Bool);
    }
