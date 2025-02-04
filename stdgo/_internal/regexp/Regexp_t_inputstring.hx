package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_inputstring_static_extension.T_inputString_static_extension) class T_inputString {
    public var _str : stdgo.GoString = "";
    public function new(?_str:stdgo.GoString) {
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputString(_str);
    }
}
