package stdgo._internal.net.http.internal;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.T_chunkedWriter_asInterface) class T_chunkedWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter>):stdgo.Error {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter> = _cw;
        var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _cw ?? throw "null pointer dereference").wire, ("0\r\n" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L231"
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L206"
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L207"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L210"
        {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _cw ?? throw "null pointer dereference").wire, ("%x\r\n" : stdgo.GoString), stdgo.Go.toInterface((_data.length)));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L211"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L213"
        {
            {
                var __tmp__ = (@:checkr _cw ?? throw "null pointer dereference").wire.write(_data);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L214"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L216"
        if (_n != ((_data.length))) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L218"
            return { _0 : _n, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L220"
        {
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _cw ?? throw "null pointer dereference").wire, ("\r\n" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L221"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L223"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _cw ?? throw "null pointer dereference").wire) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter>)) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter>), _1 : false };
            }, _bw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _bw.flush();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L226"
        return { _0 : _n, _1 : _err };
    }
}
