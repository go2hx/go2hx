package stdgo.net.http;
class T_http2responseWriter_static_extension {
    static public function push(_w:T_http2responseWriter, _target:String, _opts:PushOptions):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        final _target = (_target : stdgo.GoString);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>);
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.push(_w, _target, _opts);
    }
    static public function writeString(_w:T_http2responseWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_http2responseWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_w:T_http2responseWriter, _code:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.writeHeader(_w, _code);
    }
    static public function header(_w:T_http2responseWriter):Header {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.header(_w);
    }
    static public function closeNotify(_w:T_http2responseWriter):stdgo.Chan<Bool> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.closeNotify(_w);
    }
    static public function flushError(_w:T_http2responseWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.flushError(_w);
    }
    static public function flush(_w:T_http2responseWriter):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.flush(_w);
    }
    static public function setWriteDeadline(_w:T_http2responseWriter, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.setWriteDeadline(_w, _deadline);
    }
    static public function setReadDeadline(_w:T_http2responseWriter, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.setReadDeadline(_w, _deadline);
    }
}
