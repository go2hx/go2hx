package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_timeoutWriter_asInterface) class T_timeoutWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeHeader( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _code:stdgo.GoInt):Void throw "T_timeoutWriter:net.http.writeHeader is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_timeoutWriter:net.http.write is not yet implemented";
    @:keep
    @:tdfield
    static public function header( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>):stdgo._internal.net.http.Http_header.Header throw "T_timeoutWriter:net.http.header is not yet implemented";
    @:keep
    @:tdfield
    static public function push( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error throw "T_timeoutWriter:net.http.push is not yet implemented";
}
