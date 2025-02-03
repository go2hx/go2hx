package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_inputString_static_extension) abstract T_inputString(stdgo._internal.regexp.Regexp_T_inputString.T_inputString) from stdgo._internal.regexp.Regexp_T_inputString.T_inputString to stdgo._internal.regexp.Regexp_T_inputString.T_inputString {
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = (v : stdgo.GoString);
        return v;
    }
    public function new(?_str:String) this = new stdgo._internal.regexp.Regexp_T_inputString.T_inputString((_str : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
