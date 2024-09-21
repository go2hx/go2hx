package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _commaSplit(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                if (_data[(_i : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                    return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                };
            });
        };
        return { _0 : (0 : stdgo.GoInt), _1 : _data, _2 : stdgo._internal.bufio.Bufio_errFinalToken.errFinalToken };
    }
