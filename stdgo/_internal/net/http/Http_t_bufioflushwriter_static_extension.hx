package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_bufioFlushWriter_asInterface) class T_bufioFlushWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _fw:stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fw:stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter = _fw?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _fw._w.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fw._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : false };
            }, _bw = __tmp__._0, _ok = __tmp__._1;
            if (((_n > (0 : stdgo.GoInt) : Bool) && _ok : Bool)) {
                var _ferr = (@:check2r _bw.flush() : stdgo.Error);
                if (((_ferr != null) && (_err == null) : Bool)) {
                    _err = _ferr;
                };
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
