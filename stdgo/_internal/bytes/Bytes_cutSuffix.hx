package stdgo._internal.bytes;
function cutSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _before = (null : stdgo.Slice<stdgo.GoUInt8>), _found = false;
        if (!stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_s, _suffix)) {
            return { _0 : _before = _s, _1 : _found = false };
        };
        return { _0 : _before = (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _found = true };
    }
