package stdgo._internal.bufio;
function scanWords(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _start = (0 : stdgo.GoInt);
        {
            var _width = (0 : stdgo.GoInt);
            while ((_start < (_data.length) : Bool)) {
                var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
{
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_data.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
if (!stdgo._internal.bufio.Bufio__isspace._isSpace(_r)) {
                    break;
                };
                _start = (_start + (_width) : stdgo.GoInt);
            };
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_start : stdgo.GoInt);
var _i = __1, _width = __0;
            while ((_i < (_data.length) : Bool)) {
                var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
{
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
if (stdgo._internal.bufio.Bufio__isspace._isSpace(_r)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (_i + _width : stdgo.GoInt), _1 : (_data.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        _advance = __tmp__._0;
                        _token = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _i = (_i + (_width) : stdgo.GoInt);
            };
        };
        if ((_atEOF && ((_data.length) > _start : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (_data.length), _1 : (_data.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _start, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            _advance = __tmp__._0;
            _token = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
