package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9282_static_extension.T_testAnonymousFields___localname___S_9282_static_extension) class T_testAnonymousFields___localname___S_9282 {
    @:embedded
    public var _myInt : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9268.T_testAnonymousFields___localname___myInt_9268> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9268.T_testAnonymousFields___localname___myInt_9268>);
    public function new(?_myInt:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9268.T_testAnonymousFields___localname___myInt_9268>) {
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_9282(_myInt);
    }
}
