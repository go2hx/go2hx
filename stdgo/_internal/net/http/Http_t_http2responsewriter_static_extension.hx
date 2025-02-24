package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriter_asInterface) class T_http2responseWriter_static_extension {
    @:keep
    @:tdfield
    static public function push( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error throw "T_http2responseWriter:net.http.push is not yet implemented";
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_http2responseWriter:net.http.writeString is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_http2responseWriter:net.http.write is not yet implemented";
    @:keep
    @:tdfield
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _code:stdgo.GoInt):Void throw "T_http2responseWriter:net.http.writeHeader is not yet implemented";
    @:keep
    @:tdfield
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo._internal.net.http.Http_header.Header throw "T_http2responseWriter:net.http.header is not yet implemented";
    @:keep
    @:tdfield
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo.Chan<Bool> throw "T_http2responseWriter:net.http.closeNotify is not yet implemented";
    @:keep
    @:tdfield
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo.Error throw "T_http2responseWriter:net.http.flushError is not yet implemented";
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):Void throw "T_http2responseWriter:net.http.flush is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_http2responseWriter:net.http.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_http2responseWriter:net.http.setReadDeadline is not yet implemented";
}
