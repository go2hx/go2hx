package stdgo._internal.flag;
@:structInit @:using(stdgo._internal.flag.Flag_T_textValue_static_extension.T_textValue_static_extension) class T_textValue {
    public var _p : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler = (null : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler);
    public function new(?_p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_textValue(_p);
    }
}
