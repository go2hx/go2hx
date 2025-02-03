package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.StringTest_static_extension) abstract StringTest(stdgo._internal.math.big.Big_StringTest.StringTest) from stdgo._internal.math.big.Big_StringTest.StringTest to stdgo._internal.math.big.Big_StringTest.StringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_in:String, ?_out:String, ?_ok:Bool) this = new stdgo._internal.math.big.Big_StringTest.StringTest((_in : stdgo.GoString), (_out : stdgo.GoString), _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
