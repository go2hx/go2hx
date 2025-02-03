package stdgo.errors;
@:structInit @:using(stdgo.errors.Errors.T_errorString_static_extension) abstract T_errorString(stdgo._internal.errors.Errors_T_errorString.T_errorString) from stdgo._internal.errors.Errors_T_errorString.T_errorString to stdgo._internal.errors.Errors_T_errorString.T_errorString {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_s:String) this = new stdgo._internal.errors.Errors_T_errorString.T_errorString((_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
