package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9564_static_extension) abstract T_testAnonymousFields___localname___S_9564(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564 {
    public var myInt(get, set) : stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>;
    function get_myInt():stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550> return this.myInt;
    function set_myInt(v:stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>):stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550> {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
