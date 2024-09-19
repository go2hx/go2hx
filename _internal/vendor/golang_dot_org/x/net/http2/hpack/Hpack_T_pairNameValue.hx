package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit class T_pairNameValue {
    public var _name : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_value:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pairNameValue(_name, _value);
    }
}
