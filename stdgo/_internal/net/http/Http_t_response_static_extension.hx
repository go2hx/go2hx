package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_response_asInterface) class T_response_static_extension {
    @:keep
    @:tdfield
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo.Chan<Bool> throw "T_response:net.http.closeNotify is not yet implemented";
    @:keep
    @:tdfield
    static public function hijack( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } throw "T_response:net.http.hijack is not yet implemented";
    @:keep
    @:tdfield
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo.Error throw "T_response:net.http.flushError is not yet implemented";
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Void throw "T_response:net.http.flush is not yet implemented";
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _data:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_response:net.http.writeString is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_response:net.http.write is not yet implemented";
    @:keep
    @:tdfield
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _code:stdgo.GoInt):Void throw "T_response:net.http.writeHeader is not yet implemented";
    @:keep
    @:tdfield
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo._internal.net.http.Http_header.Header throw "T_response:net.http.header is not yet implemented";
    @:keep
    @:tdfield
    static public function readFrom( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _src:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "T_response:net.http.readFrom is not yet implemented";
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo.Error throw "T_response:net.http.enableFullDuplex is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_response:net.http.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_response:net.http.setReadDeadline is not yet implemented";
}
