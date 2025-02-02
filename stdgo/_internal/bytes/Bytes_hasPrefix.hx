package stdgo._internal.bytes;
function hasPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return (((_s.length) >= (_prefix.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>), _prefix) : Bool);
    }
