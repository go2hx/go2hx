package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function close( _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder> = _e;
        if (((_e._err == null) && (_e._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _e._enc.encode((_e._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__((0 : stdgo.GoInt), _e._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
            var _encodedLen = (_e._enc.encodedLen(_e._nbuf) : stdgo.GoInt);
            _e._nbuf = (0 : stdgo.GoInt);
            {
                var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), _encodedLen) : stdgo.Slice<stdgo.GoUInt8>));
                _e._err = __tmp__._1;
            };
        };
        return _e._err;
    }
    @:keep
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_e._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _e._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((_e._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_p.length) : Bool) && (_e._nbuf < (5 : stdgo.GoInt) : Bool) : Bool)) {
                    _e._buf[(_e._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
_e._nbuf++;
                    _i++;
                };
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            if ((_e._nbuf < (5 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
            _e._enc.encode((_e._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _e._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _e._nbuf = (0 : stdgo.GoInt);
        };
        while (((_p.length) >= (5 : stdgo.GoInt) : Bool)) {
            var _nn = (640 : stdgo.GoInt);
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
                _nn = (_nn - ((_nn % (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            _e._enc.encode((_e._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__((0 : stdgo.GoInt), _nn) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), ((_nn / (5 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _e._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo.Go.copySlice((_e._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p);
        _e._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
