package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_contextKey_static_extension.T_contextKey_static_extension) class T_contextKey {
    public var _name : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString) {
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_contextKey(_name);
    }
}
