package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9282_static_extension) abstract T_testAnonymousFields___localname___S_9282(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282 {
    public var _myInt(get, set) : stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>;
    function get__myInt():stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268> return this._myInt;
    function set__myInt(v:stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>):stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268> {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
