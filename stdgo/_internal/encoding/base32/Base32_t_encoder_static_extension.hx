package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function close( _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L252"
        if ((((@:checkr _e ?? throw "null pointer dereference")._err == null) && ((@:checkr _e ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L253"
            (@:checkr _e ?? throw "null pointer dereference")._enc.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (@:checkr _e ?? throw "null pointer dereference")._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
            var _encodedLen = ((@:checkr _e ?? throw "null pointer dereference")._enc.encodedLen((@:checkr _e ?? throw "null pointer dereference")._nbuf) : stdgo.GoInt);
            (@:checkr _e ?? throw "null pointer dereference")._nbuf = (0 : stdgo.GoInt);
            {
                var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), _encodedLen) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L258"
        return (@:checkr _e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L203"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L204"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L208"
        if (((@:checkr _e ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L210"
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_p.length) : Bool) && ((@:checkr _e ?? throw "null pointer dereference")._nbuf < (5 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L212"
                    (@:checkr _e ?? throw "null pointer dereference")._nbuf++;
                    _i++;
                };
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L216"
            if (((@:checkr _e ?? throw "null pointer dereference")._nbuf < (5 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L217"
                return { _0 : _n, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L219"
            (@:checkr _e ?? throw "null pointer dereference")._enc.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L220"
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L221"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _e ?? throw "null pointer dereference")._nbuf = (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L227"
        while (((_p.length) >= (5 : stdgo.GoInt) : Bool)) {
            var _nn = (640 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L229"
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
                _nn = (_nn - ((_nn % (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L233"
            (@:checkr _e ?? throw "null pointer dereference")._enc.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__((0 : stdgo.GoInt), _nn) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L234"
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), ((_nn / (5 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L235"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L242"
        ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        (@:checkr _e ?? throw "null pointer dereference")._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L245"
        return { _0 : _n, _1 : _err };
    }
}
