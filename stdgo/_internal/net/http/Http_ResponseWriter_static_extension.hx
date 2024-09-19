package stdgo._internal.net.http;
@:keep class ResponseWriter_static_extension {
    static public function writeHeader(t:ResponseWriter, _statusCode:stdgo.GoInt):Void t.writeHeader(_statusCode);
    static public function write(t:ResponseWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_0);
    static public function header(t:ResponseWriter):stdgo._internal.net.http.Http_Header.Header return t.header();
}
