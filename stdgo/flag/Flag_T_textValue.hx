package stdgo.flag;
@:structInit @:using(stdgo.flag.Flag.T_textValue_static_extension) abstract T_textValue(stdgo._internal.flag.Flag_T_textValue.T_textValue) from stdgo._internal.flag.Flag_T_textValue.T_textValue to stdgo._internal.flag.Flag_T_textValue.T_textValue {
    public var _p(get, set) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler;
    function get__p():stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler return this._p;
    function set__p(v:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler) this = new stdgo._internal.flag.Flag_T_textValue.T_textValue(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
