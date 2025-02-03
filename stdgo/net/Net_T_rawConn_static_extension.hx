package stdgo.net;
class T_rawConn_static_extension {
    static public function pollFD(_c:T_rawConn):stdgo._internal.internal.poll.Poll_FD.FD {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_rawConn.T_rawConn>);
        return stdgo._internal.net.Net_T_rawConn_static_extension.T_rawConn_static_extension.pollFD(_c);
    }
    static public function write(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_rawConn.T_rawConn>);
        final _f = _f;
        return stdgo._internal.net.Net_T_rawConn_static_extension.T_rawConn_static_extension.write(_c, _f);
    }
    static public function read(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_rawConn.T_rawConn>);
        final _f = _f;
        return stdgo._internal.net.Net_T_rawConn_static_extension.T_rawConn_static_extension.read(_c, _f);
    }
    static public function control(_c:T_rawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_rawConn.T_rawConn>);
        final _f = _f;
        return stdgo._internal.net.Net_T_rawConn_static_extension.T_rawConn_static_extension.control(_c, _f);
    }
}
