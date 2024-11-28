package stdgo._internal.bytes;
function cutPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _after = (null : stdgo.Slice<stdgo.GoUInt8>), _found = false;
        if (!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_s, _prefix)) {
            return { _0 : _after = _s, _1 : _found = false };
        };
        return { _0 : _after = (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _found = true };
    }
