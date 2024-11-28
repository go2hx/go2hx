package stdgo._internal.bufio;
function scanLines(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : _advance = (0 : stdgo.GoInt), _1 : _token = (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err = (null : stdgo.Error) };
        };
        {
            var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_data, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _advance = (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _token = stdgo._internal.bufio.Bufio__dropCR._dropCR((_data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>)), _2 : _err = (null : stdgo.Error) };
            };
        };
        if (_atEOF) {
            return { _0 : _advance = (_data.length), _1 : _token = stdgo._internal.bufio.Bufio__dropCR._dropCR(_data), _2 : _err = (null : stdgo.Error) };
        };
        return { _0 : _advance = (0 : stdgo.GoInt), _1 : _token = (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err = (null : stdgo.Error) };
    }
