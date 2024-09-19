package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input_static_extension.T_input_static_extension) class T_input {
    public var _str : stdgo.GoString = "";
    public var _bytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_str:stdgo.GoString, ?_bytes:stdgo.Slice<stdgo.GoUInt8>) {
        if (_str != null) this._str = _str;
        if (_bytes != null) this._bytes = _bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_input(_str, _bytes);
    }
}
