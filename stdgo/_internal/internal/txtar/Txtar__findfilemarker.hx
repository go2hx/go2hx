package stdgo._internal.internal.txtar;
function _findFileMarker(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoString; var _2 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _before = (null : stdgo.Slice<stdgo.GoUInt8>), _name = ("" : stdgo.GoString), _after = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            {
                {
                    var __tmp__ = stdgo._internal.internal.txtar.Txtar__ismarker._isMarker((_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _name = @:tmpset0 __tmp__._0?.__copy__();
                    _after = @:tmpset0 __tmp__._1;
                };
                if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoString; var _2 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : (_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _1 : _name?.__copy__(), _2 : _after };
                        _before = __tmp__._0;
                        _name = __tmp__._1;
                        _after = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            var _j = (stdgo._internal.bytes.Bytes_index.index((_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.internal.txtar.Txtar__newlinemarker._newlineMarker) : stdgo.GoInt);
            if ((_j < (0 : stdgo.GoInt) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoString; var _2 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : stdgo._internal.internal.txtar.Txtar__fixnl._fixNL(_data), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Slice<stdgo.GoUInt8>) };
                    _before = __tmp__._0;
                    _name = __tmp__._1;
                    _after = __tmp__._2;
                    __tmp__;
                };
            };
            _i = (_i + ((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
