package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_bodyLocked_static_extension.T_bodyLocked_static_extension) class T_bodyLocked {
    public var _b : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>);
    public function new(?_b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) {
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bodyLocked(_b);
    }
}
