package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2stickyErrWriter_asInterface) class T_http2stickyErrWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _sew:stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sew:stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter = _sew?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_sew._err : stdgo.Error) != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (_sew._err : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        while (true) {
            if (_sew._timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                _sew._conn.setWriteDeadline(stdgo._internal.net.http.Http__time._time.now().add(_sew._timeout)?.__copy__());
            };
            var __tmp__ = _sew._conn.write((_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>)), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_nn) : stdgo.GoInt);
            if ((((_n < (_p.length) : Bool) && (_nn > (0 : stdgo.GoInt) : Bool) : Bool) && stdgo._internal.net.http.Http__errors._errors.is_(_err, stdgo._internal.net.http.Http__os._os.errDeadlineExceeded) : Bool)) {
                continue;
            };
            if (_sew._timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                _sew._conn.setWriteDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
            };
            {
                var __tmp__ = _err;
                var x = (_sew._err : stdgo.Error);
                x.error = __tmp__.error;
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
}
