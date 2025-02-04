package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_dumper_asInterface) class T_dumper_static_extension {
    @:keep
    @:tdfield
    static public function close( _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper>):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper> = _h;
        var _err = (null : stdgo.Error);
        if ((@:checkr _h ?? throw "null pointer dereference")._closed) {
            return _err;
        };
        (@:checkr _h ?? throw "null pointer dereference")._closed = true;
        if ((@:checkr _h ?? throw "null pointer dereference")._used == ((0 : stdgo.GoInt))) {
            return _err;
        };
        (@:checkr _h ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw "null pointer dereference")._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        var _nBytes = ((@:checkr _h ?? throw "null pointer dereference")._used : stdgo.GoInt);
        while (((@:checkr _h ?? throw "null pointer dereference")._used < (16 : stdgo.GoInt) : Bool)) {
            var _l = (3 : stdgo.GoInt);
            if ((@:checkr _h ?? throw "null pointer dereference")._used == ((7 : stdgo.GoInt))) {
                _l = (4 : stdgo.GoInt);
            } else if ((@:checkr _h ?? throw "null pointer dereference")._used == ((15 : stdgo.GoInt))) {
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            (@:checkr _h ?? throw "null pointer dereference")._used++;
        };
        (@:checkr _h ?? throw "null pointer dereference")._rightChars[(_nBytes : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        (@:checkr _h ?? throw "null pointer dereference")._rightChars[(_nBytes + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        {
            var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write(((@:checkr _h ?? throw "null pointer dereference")._rightChars.__slice__(0, (_nBytes + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _h ?? throw "null pointer dereference")._closed) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("encoding/hex: dumper closed" : stdgo.GoString)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        for (_i => _ in _data) {
            if ((@:checkr _h ?? throw "null pointer dereference")._used == ((0 : stdgo.GoInt))) {
                (@:checkr _h ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (((@:checkr _h ?? throw "null pointer dereference")._n >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                (@:checkr _h ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (((@:checkr _h ?? throw "null pointer dereference")._n >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                (@:checkr _h ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (((@:checkr _h ?? throw "null pointer dereference")._n >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                (@:checkr _h ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((@:checkr _h ?? throw "null pointer dereference")._n : stdgo.GoUInt8);
                stdgo._internal.encoding.hex.Hex_encode.encode(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _h ?? throw "null pointer dereference")._buf[(12 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                (@:checkr _h ?? throw "null pointer dereference")._buf[(13 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                {
                    var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
            stdgo._internal.encoding.hex.Hex_encode.encode(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _h ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            var _l = (3 : stdgo.GoInt);
            if ((@:checkr _h ?? throw "null pointer dereference")._used == ((7 : stdgo.GoInt))) {
                (@:checkr _h ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _l = (4 : stdgo.GoInt);
            } else if ((@:checkr _h ?? throw "null pointer dereference")._used == ((15 : stdgo.GoInt))) {
                (@:checkr _h ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                (@:checkr _h ?? throw "null pointer dereference")._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write(((@:checkr _h ?? throw "null pointer dereference")._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _n++;
            (@:checkr _h ?? throw "null pointer dereference")._rightChars[((@:checkr _h ?? throw "null pointer dereference")._used : stdgo.GoInt)] = stdgo._internal.encoding.hex.Hex__tochar._toChar(_data[(_i : stdgo.GoInt)]);
            (@:checkr _h ?? throw "null pointer dereference")._used++;
            (@:checkr _h ?? throw "null pointer dereference")._n++;
            if ((@:checkr _h ?? throw "null pointer dereference")._used == ((16 : stdgo.GoInt))) {
                (@:checkr _h ?? throw "null pointer dereference")._rightChars[(16 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                (@:checkr _h ?? throw "null pointer dereference")._rightChars[(17 : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                {
                    var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write(((@:checkr _h ?? throw "null pointer dereference")._rightChars.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                (@:checkr _h ?? throw "null pointer dereference")._used = (0 : stdgo.GoInt);
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
