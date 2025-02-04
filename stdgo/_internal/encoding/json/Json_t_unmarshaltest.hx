package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_unmarshaltest_static_extension.T_unmarshalTest_static_extension) class T_unmarshalTest {
    public var _in : stdgo.GoString = "";
    public var _ptr : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _golden : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_in:stdgo.GoString, ?_ptr:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) {
        if (_in != null) this._in = _in;
        if (_ptr != null) this._ptr = _ptr;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_golden != null) this._golden = _golden;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_in, _ptr, _out, _err, _useNumber, _golden, _disallowUnknownFields);
    }
}
