package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951_static_extension.T_testMarshalFloatMap___localname___mapEntry_27951_static_extension) class T_testMarshalFloatMap___localname___mapEntry_27951 {
    public var _keyBits : stdgo.GoUInt64 = 0;
    public var _value : stdgo.GoString = "";
    public function new(?_keyBits:stdgo.GoUInt64, ?_value:stdgo.GoString) {
        if (_keyBits != null) this._keyBits = _keyBits;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalFloatMap___localname___mapEntry_27951(_keyBits, _value);
    }
}
