package stdgo.internal.bisect;
@:structInit @:using(stdgo.internal.bisect.Bisect.T_parseError_static_extension) abstract T_parseError(stdgo._internal.internal.bisect.Bisect_T_parseError.T_parseError) from stdgo._internal.internal.bisect.Bisect_T_parseError.T_parseError to stdgo._internal.internal.bisect.Bisect_T_parseError.T_parseError {
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public function new(?_text:String) this = new stdgo._internal.internal.bisect.Bisect_T_parseError.T_parseError((_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
