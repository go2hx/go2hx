package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_onceCloseListener_asInterface) class T_onceCloseListener_static_extension {
    @:keep
    static public function _close( _oc:stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener>):Void {
        @:recv var _oc:stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener> = _oc;
        _oc._closeErr = _oc.listener.close();
    }
    @:keep
    static public function close( _oc:stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener>):stdgo.Error {
        @:recv var _oc:stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener> = _oc;
        _oc._once.do_(_oc._close);
        return _oc._closeErr;
    }
    @:embedded
    public static function addr( __self__:stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener):stdgo._internal.net.Net_Addr.Addr return __self__.addr();
    @:embedded
    public static function accept( __self__:stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.accept();
}
