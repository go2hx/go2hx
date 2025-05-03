package stdgo._internal.encoding.ascii85;
@:keep @:allow(stdgo._internal.encoding.ascii85.Ascii85.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function close( _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L155"
        if ((((@:checkr _e ?? throw "null pointer dereference")._err == null) && ((@:checkr _e ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _nout = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (@:checkr _e ?? throw "null pointer dereference")._nbuf) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            (@:checkr _e ?? throw "null pointer dereference")._nbuf = (0 : stdgo.GoInt);
            {
                var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), _nout) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L160"
        return (@:checkr _e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L104"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L105"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L109"
        if (((@:checkr _e ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L111"
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_p.length) : Bool) && ((@:checkr _e ?? throw "null pointer dereference")._nbuf < (4 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L113"
                    (@:checkr _e ?? throw "null pointer dereference")._nbuf++;
                    _i++;
                };
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L117"
            if (((@:checkr _e ?? throw "null pointer dereference")._nbuf < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L118"
                return { _0 : _n, _1 : _err };
            };
            var _nout = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L121"
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), _nout) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L122"
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
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L128"
        while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
            var _nn = (816 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L130"
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
            };
            _nn = (_nn - ((_nn % (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L134"
            if ((_nn > (0 : stdgo.GoInt) : Bool)) {
                var _nout = (stdgo._internal.encoding.ascii85.Ascii85_encode.encode(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__((0 : stdgo.GoInt), _nn) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L136"
                {
                    {
                        var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._out.__slice__((0 : stdgo.GoInt), _nout) : stdgo.Slice<stdgo.GoUInt8>));
                        (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                    };
                    if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L137"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L145"
        ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        (@:checkr _e ?? throw "null pointer dereference")._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L148"
        return { _0 : _n, _1 : _err };
    }
}
