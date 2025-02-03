package stdgo.crypto.tls;
class QUICConn_static_extension {
    static public function setTransportParameters(_q:QUICConn, _params:Array<std.UInt>):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        final _params = ([for (i in _params) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.setTransportParameters(_q, _params);
    }
    static public function connectionState(_q:QUICConn):ConnectionState {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        return stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.connectionState(_q);
    }
    static public function sendSessionTicket(_q:QUICConn, _opts:QUICSessionTicketOptions):stdgo.Error {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        return stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.sendSessionTicket(_q, _opts);
    }
    static public function handleData(_q:QUICConn, _level:QUICEncryptionLevel, _data:Array<std.UInt>):stdgo.Error {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.handleData(_q, _level, _data);
    }
    static public function close(_q:QUICConn):stdgo.Error {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        return stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.close(_q);
    }
    static public function nextEvent(_q:QUICConn):QUICEvent {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        return stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.nextEvent(_q);
    }
    static public function start(_q:QUICConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>);
        return stdgo._internal.crypto.tls.Tls_QUICConn_static_extension.QUICConn_static_extension.start(_q, _ctx);
    }
}
