package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_checkConnErrorWriter_static_extension.T_checkConnErrorWriter_static_extension) class T_checkConnErrorWriter {
    public var _c : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>);
    public function new(?_c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_checkConnErrorWriter(_c);
    }
}
