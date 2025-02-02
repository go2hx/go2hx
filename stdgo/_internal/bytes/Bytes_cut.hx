package stdgo._internal.bytes;
function cut(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } {
        var _before = (null : stdgo.Slice<stdgo.GoUInt8>), _after = (null : stdgo.Slice<stdgo.GoUInt8>), _found = false;
        {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_s, _sep) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } = { _0 : (_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _1 : (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : true };
                    _before = __tmp__._0;
                    _after = __tmp__._1;
                    _found = __tmp__._2;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } = { _0 : _s, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : false };
            _before = __tmp__._0;
            _after = __tmp__._1;
            _found = __tmp__._2;
            __tmp__;
        };
    }
