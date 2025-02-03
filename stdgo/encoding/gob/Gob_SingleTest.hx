package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.SingleTest_static_extension) abstract SingleTest(stdgo._internal.encoding.gob.Gob_SingleTest.SingleTest) from stdgo._internal.encoding.gob.Gob_SingleTest.SingleTest to stdgo._internal.encoding.gob.Gob_SingleTest.SingleTest {
    public var _in(get, set) : stdgo.AnyInterface;
    function get__in():stdgo.AnyInterface return this._in;
    function set__in(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._in = (v : stdgo.AnyInterface);
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = (v : stdgo.AnyInterface);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:String) this = new stdgo._internal.encoding.gob.Gob_SingleTest.SingleTest((_in : stdgo.AnyInterface), (_out : stdgo.AnyInterface), (_err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
