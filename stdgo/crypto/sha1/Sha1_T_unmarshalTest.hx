package stdgo.crypto.sha1;
@:structInit @:using(stdgo.crypto.sha1.Sha1.T_unmarshalTest_static_extension) abstract T_unmarshalTest(stdgo._internal.crypto.sha1.Sha1_T_unmarshalTest.T_unmarshalTest) from stdgo._internal.crypto.sha1.Sha1_T_unmarshalTest.T_unmarshalTest to stdgo._internal.crypto.sha1.Sha1_T_unmarshalTest.T_unmarshalTest {
    public var _state(get, set) : String;
    function get__state():String return this._state;
    function set__state(v:String):String {
        this._state = (v : stdgo.GoString);
        return v;
    }
    public var _sum(get, set) : String;
    function get__sum():String return this._sum;
    function set__sum(v:String):String {
        this._sum = (v : stdgo.GoString);
        return v;
    }
    public function new(?_state:String, ?_sum:String) this = new stdgo._internal.crypto.sha1.Sha1_T_unmarshalTest.T_unmarshalTest((_state : stdgo.GoString), (_sum : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
