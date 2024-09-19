package stdgo._internal.bufio;
function scanRunes(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        if ((_data[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_data), __0:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
        if ((_width > (1 : stdgo.GoInt) : Bool)) {
            return { _0 : _width, _1 : (_data.__slice__((0 : stdgo.GoInt), _width) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        if ((!_atEOF && !stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_data) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (1 : stdgo.GoInt), _1 : stdgo._internal.bufio.Bufio__errorRune._errorRune, _2 : (null : stdgo.Error) };
    }
