package stdgo._internal.internal.txtar;
function _isMarker(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _name = ("" : stdgo.GoString), _after = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_data, stdgo._internal.internal.txtar.Txtar__marker._marker)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>) };
                _name = __tmp__._0;
                _after = __tmp__._1;
                __tmp__;
            };
        };
        {
            var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_data, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (_data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _data = __tmp__0;
                    _after = __tmp__1;
                };
            };
        };
        if (!((stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_data, stdgo._internal.internal.txtar.Txtar__markerEnd._markerEnd) && ((_data.length) >= ((stdgo._internal.internal.txtar.Txtar__marker._marker.length) + (stdgo._internal.internal.txtar.Txtar__markerEnd._markerEnd.length) : stdgo.GoInt) : Bool) : Bool))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>) };
                _name = __tmp__._0;
                _after = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : stdgo._internal.strings.Strings_trimSpace.trimSpace(((_data.__slice__((stdgo._internal.internal.txtar.Txtar__marker._marker.length), ((_data.length) - (stdgo._internal.internal.txtar.Txtar__markerEnd._markerEnd.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__(), _1 : _after };
            _name = __tmp__._0;
            _after = __tmp__._1;
            __tmp__;
        };
    }
