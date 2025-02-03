package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_onceCloseListener_static_extension) abstract T_onceCloseListener(stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener) from stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener to stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener {
    public var listener(get, set) : stdgo._internal.net.Net_Listener.Listener;
    function get_listener():stdgo._internal.net.Net_Listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_Listener.Listener):stdgo._internal.net.Net_Listener.Listener {
        this.listener = v;
        return v;
    }
    public function new(?listener:stdgo._internal.net.Net_Listener.Listener) this = new stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener(listener);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
