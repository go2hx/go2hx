package stdgo._internal.crypto.tls;
function _splitPreMasterSecret(_secret:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _s1 = (null : stdgo.Slice<stdgo.GoUInt8>), _s2 = (null : stdgo.Slice<stdgo.GoUInt8>);
        _s1 = (_secret.__slice__((0 : stdgo.GoInt), ((((_secret.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _s2 = (_secret.__slice__(((_secret.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _s1, _1 : _s2 };
    }
