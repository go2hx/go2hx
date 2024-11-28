package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_dumper_asInterface) class T_dumper_static_extension {
    @:keep
    static public function close( _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper>):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper> = _h;
        var _err = (null : stdgo.Error);
        if (_h._closed) {
            return _err;
        };
        _h._closed = true;
        if (_h._used == ((0 : stdgo.GoInt))) {
            return _err;
        };
        _h._buf[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(1 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        var _nBytes = (_h._used : stdgo.GoInt);
        while ((_h._used < (16 : stdgo.GoInt) : Bool)) {
            var _l = (3 : stdgo.GoInt);
            if (_h._used == ((7 : stdgo.GoInt))) {
                _l = (4 : stdgo.GoInt);
            } else if (_h._used == ((15 : stdgo.GoInt))) {
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _h._used++;
        };
        _h._rightChars[(_nBytes : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        _h._rightChars[(_nBytes + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        {
            var __tmp__ = _h._w.write((_h._rightChars.__slice__(0, (_nBytes + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function write( _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_h._closed) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.errors.Errors_new_.new_(("encoding/hex: dumper closed" : stdgo.GoString)) };
        };
        for (_i => _ in _data) {
            if (_h._used == ((0 : stdgo.GoInt))) {
                _h._buf[(0 : stdgo.GoInt)] = ((_h._n >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                _h._buf[(1 : stdgo.GoInt)] = ((_h._n >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                _h._buf[(2 : stdgo.GoInt)] = ((_h._n >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                _h._buf[(3 : stdgo.GoInt)] = (_h._n : stdgo.GoUInt8);
                stdgo._internal.encoding.hex.Hex_encode.encode((_h._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_h._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _h._buf[(12 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _h._buf[(13 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
            stdgo._internal.encoding.hex.Hex_encode.encode((_h._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _h._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            var _l = (3 : stdgo.GoInt);
            if (_h._used == ((7 : stdgo.GoInt))) {
                _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _l = (4 : stdgo.GoInt);
            } else if (_h._used == ((15 : stdgo.GoInt))) {
                _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _h._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _n++;
            _h._rightChars[(_h._used : stdgo.GoInt)] = stdgo._internal.encoding.hex.Hex__toChar._toChar(_data[(_i : stdgo.GoInt)]);
            _h._used++;
            _h._n++;
            if (_h._used == ((16 : stdgo.GoInt))) {
                _h._rightChars[(16 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _h._rightChars[(17 : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._rightChars.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _h._used = (0 : stdgo.GoInt);
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
