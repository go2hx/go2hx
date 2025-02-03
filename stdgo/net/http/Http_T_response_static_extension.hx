package stdgo.net.http;
class T_response_static_extension {
    static public function closeNotify(_w:T_response):stdgo.Chan<Bool> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.closeNotify(_w);
    }
    static public function hijack(_w:T_response):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.hijack(_w);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function flushError(_w:T_response):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.flushError(_w);
    }
    static public function flush(_w:T_response):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.flush(_w);
    }
    static public function writeString(_w:T_response, _data:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        final _data = (_data : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.writeString(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_response, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_w:T_response, _code:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.writeHeader(_w, _code);
    }
    static public function header(_w:T_response):Header {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.header(_w);
    }
    static public function readFrom(_w:T_response, _src:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.readFrom(_w, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function enableFullDuplex(_c:T_response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.enableFullDuplex(_c);
    }
    static public function setWriteDeadline(_c:T_response, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.setWriteDeadline(_c, _deadline);
    }
    static public function setReadDeadline(_c:T_response, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.setReadDeadline(_c, _deadline);
    }
}
