package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testEmptyString___localname___T2_40735_static_extension) abstract T_testEmptyString___localname___T2_40735(stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735) from stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735 to stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735 {
    public var number1(get, set) : StdTypes.Int;
    function get_number1():StdTypes.Int return this.number1;
    function set_number1(v:StdTypes.Int):StdTypes.Int {
        this.number1 = (v : stdgo.GoInt);
        return v;
    }
    public var number2(get, set) : StdTypes.Int;
    function get_number2():StdTypes.Int return this.number2;
    function set_number2(v:StdTypes.Int):StdTypes.Int {
        this.number2 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?number1:StdTypes.Int, ?number2:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735((number1 : stdgo.GoInt), (number2 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
