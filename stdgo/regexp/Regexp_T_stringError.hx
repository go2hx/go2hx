package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_stringError_static_extension) abstract T_stringError(stdgo._internal.regexp.Regexp_T_stringError.T_stringError) from stdgo._internal.regexp.Regexp_T_stringError.T_stringError to stdgo._internal.regexp.Regexp_T_stringError.T_stringError {
    public var _re(get, set) : String;
    function get__re():String return this._re;
    function set__re(v:String):String {
        this._re = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public function new(?_re:String, ?_err:String) this = new stdgo._internal.regexp.Regexp_T_stringError.T_stringError((_re : stdgo.GoString), (_err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
