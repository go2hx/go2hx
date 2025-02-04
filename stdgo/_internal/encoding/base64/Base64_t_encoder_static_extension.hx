package stdgo._internal.encoding.base64;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function close( _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder> = _e;
        if ((((@:checkr _e ?? throw "null pointer dereference")._err == null) && ((@:checkr _e ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r (@:checkr _e ?? throw "null pointer dereference")._enc.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _e ?? throw "null pointer dereference")._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
            {
                var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__(0, @:check2r (@:checkr _e ?? throw "null pointer dereference")._enc.encodedLen((@:checkr _e ?? throw "null pointer dereference")._nbuf)) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _e ?? throw "null pointer dereference")._nbuf = (0 : stdgo.GoInt);
        };
        return (@:checkr _e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((@:checkr _e ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_p.length) : Bool) && ((@:checkr _e ?? throw "null pointer dereference")._nbuf < (3 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
(@:checkr _e ?? throw "null pointer dereference")._nbuf++;
                    _i++;
                };
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            if (((@:checkr _e ?? throw "null pointer dereference")._nbuf < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
            @:check2r (@:checkr _e ?? throw "null pointer dereference")._enc.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _e ?? throw "null pointer dereference")._nbuf = (0 : stdgo.GoInt);
        };
        while (((_p.length) >= (3 : stdgo.GoInt) : Bool)) {
            var _nn = (768 : stdgo.GoInt);
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
                _nn = (_nn - ((_nn % (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            @:check2r (@:checkr _e ?? throw "null pointer dereference")._enc.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _nn) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), ((_nn / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        (@:checkr _e ?? throw "null pointer dereference")._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
