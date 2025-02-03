package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_ignoreTest_static_extension) abstract T_ignoreTest(stdgo._internal.encoding.gob.Gob_T_ignoreTest.T_ignoreTest) from stdgo._internal.encoding.gob.Gob_T_ignoreTest.T_ignoreTest to stdgo._internal.encoding.gob.Gob_T_ignoreTest.T_ignoreTest {
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
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_T_ignoreTest.T_ignoreTest((_in : stdgo.AnyInterface), (_out : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
