package stdgo.net.http;
class ResponseWriter_static_extension {
    static public function writeHeader(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _statusCode:StdTypes.Int):Void {
        final _statusCode = (_statusCode : stdgo.GoInt);
        stdgo._internal.net.http.Http_ResponseWriter_static_extension.ResponseWriter_static_extension.writeHeader(t, _statusCode);
    }
    static public function write(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_ResponseWriter_static_extension.ResponseWriter_static_extension.write(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter):Header {
        return stdgo._internal.net.http.Http_ResponseWriter_static_extension.ResponseWriter_static_extension.header(t);
    }
}
