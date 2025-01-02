package stdgo._internal.net.http;
@:keep class ResponseWriter_static_extension {
    @:interfacetypeffun
    static public function writeHeader(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _statusCode:stdgo.GoInt):Void t.writeHeader(_statusCode);
    @:interfacetypeffun
    static public function write(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_0);
    @:interfacetypeffun
    static public function header(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter):stdgo._internal.net.http.Http_Header.Header return t.header();
}
