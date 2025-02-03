package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_badDataTest_static_extension) abstract T_badDataTest(stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest) from stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest to stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest {
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _error(get, set) : String;
    function get__error():String return this._error;
    function set__error(v:String):String {
        this._error = (v : stdgo.GoString);
        return v;
    }
    public var _data(get, set) : stdgo.AnyInterface;
    function get__data():stdgo.AnyInterface return this._data;
    function set__data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._data = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_input:String, ?_error:String, ?_data:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest((_input : stdgo.GoString), (_error : stdgo.GoString), (_data : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
