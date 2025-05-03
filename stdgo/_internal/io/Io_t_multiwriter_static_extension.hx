package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_multiWriter_asInterface) class T_multiWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _t:stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L101"
        for (__3 => _w in (@:checkr _t ?? throw "null pointer dereference")._writers) {
            //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L102"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_stringwriter.StringWriter)) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
                }, _sw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _sw.writeString(_s?.__copy__());
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L105"
                    if (_p == null) {
                        _p = (_s : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    {
                        var __tmp__ = _w.write(_p);
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L110"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L111"
                return { _0 : _n, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L113"
            if (_n != ((_s.length))) {
                _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
                //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L115"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L118"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_s.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _t:stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L84"
        for (__3 => _w in (@:checkr _t ?? throw "null pointer dereference")._writers) {
            {
                var __tmp__ = _w.write(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L86"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L87"
                return { _0 : _n, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L89"
            if (_n != ((_p.length))) {
                _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
                //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L91"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/multi.go#L94"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
