package stdgo.log;
@:structInit @:using(stdgo.log.Log.T_tester_static_extension) abstract T_tester(stdgo._internal.log.Log_T_tester.T_tester) from stdgo._internal.log.Log_T_tester.T_tester to stdgo._internal.log.Log_T_tester.T_tester {
    public var _flag(get, set) : StdTypes.Int;
    function get__flag():StdTypes.Int return this._flag;
    function set__flag(v:StdTypes.Int):StdTypes.Int {
        this._flag = (v : stdgo.GoInt);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public function new(?_flag:StdTypes.Int, ?_prefix:String, ?_pattern:String) this = new stdgo._internal.log.Log_T_tester.T_tester((_flag : stdgo.GoInt), (_prefix : stdgo.GoString), (_pattern : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
