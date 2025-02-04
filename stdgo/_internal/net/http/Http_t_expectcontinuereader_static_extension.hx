package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_expectContinueReader_asInterface) class T_expectContinueReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>):stdgo.Error {
        @:recv var _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader> = _ecr;
        @:check2 (@:checkr _ecr ?? throw "null pointer dereference")._closed.store(true);
        return (@:checkr _ecr ?? throw "null pointer dereference")._readCloser.close();
    }
    @:keep
    @:tdfield
    static public function read( _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader> = _ecr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (@:check2 (@:checkr _ecr ?? throw "null pointer dereference")._closed.load()) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _w = (@:checkr _ecr ?? throw "null pointer dereference")._resp;
        if (((!(@:checkr _w ?? throw "null pointer dereference")._wroteContinue && @:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.load() : Bool) && !@:check2r (@:checkr _w ?? throw "null pointer dereference")._conn._hijacked() : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._wroteContinue = true;
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._writeContinueMu.lock();
            if (@:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.load()) {
                @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.writeString(("HTTP/1.1 100 Continue\r\n\r\n" : stdgo.GoString));
                @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.flush();
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.store(false);
            };
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._writeContinueMu.unlock();
        };
        {
            var __tmp__ = (@:checkr _ecr ?? throw "null pointer dereference")._readCloser.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
            @:check2 (@:checkr _ecr ?? throw "null pointer dereference")._sawEOF.store(true);
        };
        return { _0 : _n, _1 : _err };
    }
}
