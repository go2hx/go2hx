package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshalTest_static_extension) abstract T_unmarshalTest(stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest) from stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest to stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _ptr(get, set) : stdgo.AnyInterface;
    function get__ptr():stdgo.AnyInterface return this._ptr;
    function set__ptr(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._ptr = (v : stdgo.AnyInterface);
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = (v : stdgo.AnyInterface);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _useNumber(get, set) : Bool;
    function get__useNumber():Bool return this._useNumber;
    function set__useNumber(v:Bool):Bool {
        this._useNumber = v;
        return v;
    }
    public var _golden(get, set) : Bool;
    function get__golden():Bool return this._golden;
    function set__golden(v:Bool):Bool {
        this._golden = v;
        return v;
    }
    public var _disallowUnknownFields(get, set) : Bool;
    function get__disallowUnknownFields():Bool return this._disallowUnknownFields;
    function set__disallowUnknownFields(v:Bool):Bool {
        this._disallowUnknownFields = v;
        return v;
    }
    public function new(?_in:String, ?_ptr:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest((_in : stdgo.GoString), (_ptr : stdgo.AnyInterface), (_out : stdgo.AnyInterface), (_err : stdgo.Error), _useNumber, _golden, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
