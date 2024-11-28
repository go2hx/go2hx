package stdgo._internal.bufio;
function scanBytes(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : _advance = (0 : stdgo.GoInt), _1 : _token = (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err = (null : stdgo.Error) };
        };
        return { _0 : _advance = (1 : stdgo.GoInt), _1 : _token = (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : _err = (null : stdgo.Error) };
    }
