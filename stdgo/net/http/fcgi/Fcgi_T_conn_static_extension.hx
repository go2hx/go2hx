package stdgo.net.http.fcgi;
class T_conn_static_extension {
    static public function _writePairs(_c:T_conn, _recType:T_recType, _reqId:std.UInt, _pairs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _pairs = (_pairs : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension._writePairs(_c, _recType, _reqId, _pairs);
    }
    static public function _writeEndRequest(_c:T_conn, _reqId:std.UInt, _appStatus:StdTypes.Int, _protocolStatus:std.UInt):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _appStatus = (_appStatus : stdgo.GoInt);
        final _protocolStatus = (_protocolStatus : stdgo.GoUInt8);
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension._writeEndRequest(_c, _reqId, _appStatus, _protocolStatus);
    }
    static public function _writeRecord(_c:T_conn, _recType:T_recType, _reqId:std.UInt, _b:Array<std.UInt>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
        final _reqId = (_reqId : stdgo.GoUInt16);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension._writeRecord(_c, _recType, _reqId, _b);
    }
    static public function close(_c:T_conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension.close(_c);
    }
}
