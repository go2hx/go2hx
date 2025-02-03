package stdgo.crypto.sha1;
@:structInit @:using(stdgo.crypto.sha1.Sha1.T_sha1Test_static_extension) abstract T_sha1Test(stdgo._internal.crypto.sha1.Sha1_T_sha1Test.T_sha1Test) from stdgo._internal.crypto.sha1.Sha1_T_sha1Test.T_sha1Test to stdgo._internal.crypto.sha1.Sha1_T_sha1Test.T_sha1Test {
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _halfState(get, set) : String;
    function get__halfState():String return this._halfState;
    function set__halfState(v:String):String {
        this._halfState = (v : stdgo.GoString);
        return v;
    }
    public function new(?_out:String, ?_in:String, ?_halfState:String) this = new stdgo._internal.crypto.sha1.Sha1_T_sha1Test.T_sha1Test((_out : stdgo.GoString), (_in : stdgo.GoString), (_halfState : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
