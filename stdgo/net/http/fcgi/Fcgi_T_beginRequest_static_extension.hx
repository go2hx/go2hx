package stdgo.net.http.fcgi;
class T_beginRequest_static_extension {
    static public function _read(_br:T_beginRequest, _content:Array<std.UInt>):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest>);
        final _content = ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest_static_extension.T_beginRequest_static_extension._read(_br, _content);
    }
}
