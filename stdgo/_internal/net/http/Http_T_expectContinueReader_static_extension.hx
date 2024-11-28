package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_expectContinueReader_asInterface) class T_expectContinueReader_static_extension {
    @:keep
    static public function close( _ecr:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>):stdgo.Error {
        @:recv var _ecr:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader> = _ecr;
        _ecr._closed.store(true);
        return _ecr._readCloser.close();
    }
    @:keep
    static public function read( _ecr:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _ecr:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader> = _ecr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_ecr._closed.load()) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _w = _ecr._resp;
        if (((!_w._wroteContinue && _w._canWriteContinue.load() : Bool) && !_w._conn._hijacked() : Bool)) {
            _w._wroteContinue = true;
            _w._writeContinueMu.lock();
            if (_w._canWriteContinue.load()) {
                _w._conn._bufw.writeString(("HTTP/1.1 100 Continue\r\n\r\n" : stdgo.GoString));
                _w._conn._bufw.flush();
                _w._canWriteContinue.store(false);
            };
            _w._writeContinueMu.unlock();
        };
        {
            var __tmp__ = _ecr._readCloser.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _ecr._sawEOF.store(true);
        };
        return { _0 : _n, _1 : _err };
    }
}
