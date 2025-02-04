package stdgo._internal.encoding.pem;
function _getLine(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _rest = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_data, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (_data.length);
            _j = _i;
        } else {
            _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                _i--;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : stdgo._internal.bytes.Bytes_trimright.trimRight((_data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>), (" \t" : stdgo.GoString)), _1 : (_data.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>) };
            _line = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
