package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension) class T_http2clientConnPool {
    public var _t : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _conns : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>);
    public var _dialing : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>);
    public var _keys : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>);
    public var _addConnCalls : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>);
    public function new(?_t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_conns:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>, ?_dialing:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>, ?_keys:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>, ?_addConnCalls:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>) {
        if (_t != null) this._t = _t;
        if (_mu != null) this._mu = _mu;
        if (_conns != null) this._conns = _conns;
        if (_dialing != null) this._dialing = _dialing;
        if (_keys != null) this._keys = _keys;
        if (_addConnCalls != null) this._addConnCalls = _addConnCalls;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2clientConnPool(_t, _mu, _conns, _dialing, _keys, _addConnCalls);
    }
}
