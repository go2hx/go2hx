package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testMarshalFloatMap___localname___mapEntry_27951_static_extension) abstract T_testMarshalFloatMap___localname___mapEntry_27951(stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951) from stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951 to stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951 {
    public var _keyBits(get, set) : haxe.UInt64;
    function get__keyBits():haxe.UInt64 return this._keyBits;
    function set__keyBits(v:haxe.UInt64):haxe.UInt64 {
        this._keyBits = (v : stdgo.GoUInt64);
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public function new(?_keyBits:haxe.UInt64, ?_value:String) this = new stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951((_keyBits : stdgo.GoUInt64), (_value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
