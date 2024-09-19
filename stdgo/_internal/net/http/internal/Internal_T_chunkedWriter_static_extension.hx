package stdgo._internal.net.http.internal;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.T_chunkedWriter_asInterface) class T_chunkedWriter_static_extension {
    @:keep
    static public function close( _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter>):stdgo.Error {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter> = _cw;
        var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_cw.wire, ("0\r\n" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_cw.wire, ("%x\r\n" : stdgo.GoString), stdgo.Go.toInterface((_data.length)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        {
            {
                var __tmp__ = _cw.wire.write(_data);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        if (_n != ((_data.length))) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
            return { _0 : _n, _1 : _err };
        };
        {
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_cw.wire, ("\r\n" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cw.wire) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter>)) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter>), _1 : false };
            }, _bw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _bw.flush();
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
