package stdgo._internal.encoding.ascii85;
@:keep @:allow(stdgo._internal.encoding.ascii85.Ascii85.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L256"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L257"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L259"
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L260"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L263"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L265"
            if ((((@:checkr _d ?? throw "null pointer dereference")._out.length) > (0 : stdgo.GoInt) : Bool)) {
                _n = _p.__copyTo__((@:checkr _d ?? throw "null pointer dereference")._out);
                (@:checkr _d ?? throw "null pointer dereference")._out = ((@:checkr _d ?? throw "null pointer dereference")._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L268"
                return { _0 : _n, _1 : _err };
            };
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt), _nsrc:stdgo.GoInt = (0 : stdgo.GoInt), _ndst:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L273"
            if (((@:checkr _d ?? throw "null pointer dereference")._nbuf > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.ascii85.Ascii85_decode.decode(((@:checkr _d ?? throw "null pointer dereference")._outbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (@:checkr _d ?? throw "null pointer dereference")._nbuf) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._readErr != null);
                    _ndst = @:tmpset0 __tmp__._0;
                    _nsrc = @:tmpset0 __tmp__._1;
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._2;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L275"
                if ((_ndst > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _d ?? throw "null pointer dereference")._out = ((@:checkr _d ?? throw "null pointer dereference")._outbuf.__slice__((0 : stdgo.GoInt), _ndst) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw "null pointer dereference")._nbuf = ((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__(_nsrc, (@:checkr _d ?? throw "null pointer dereference")._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L278"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L280"
                if (((_ndst == (0 : stdgo.GoInt)) && ((@:checkr _d ?? throw "null pointer dereference")._err == null) : Bool)) {
                    var _off = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L284"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _d ?? throw "null pointer dereference")._nbuf : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L285"
                            if (((@:checkr _d ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] > (32 : stdgo.GoUInt8) : Bool)) {
                                (@:checkr _d ?? throw "null pointer dereference")._buf[(_off : stdgo.GoInt)] = (@:checkr _d ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)];
                                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L287"
                                _off++;
                            };
                            _i++;
                        };
                    };
                    (@:checkr _d ?? throw "null pointer dereference")._nbuf = _off;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L295"
            if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L296"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L298"
            if ((@:checkr _d ?? throw "null pointer dereference")._readErr != null) {
                (@:checkr _d ?? throw "null pointer dereference")._err = (@:checkr _d ?? throw "null pointer dereference")._readErr;
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L300"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.read(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw "null pointer dereference")._readErr = @:tmpset0 __tmp__._1;
            };
            (@:checkr _d ?? throw "null pointer dereference")._nbuf = ((@:checkr _d ?? throw "null pointer dereference")._nbuf + (_nn) : stdgo.GoInt);
        };
    }
}
