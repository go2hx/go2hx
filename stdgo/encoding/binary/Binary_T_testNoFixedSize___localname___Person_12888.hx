package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888_static_extension) abstract T_testNoFixedSize___localname___Person_12888(stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888.T_testNoFixedSize___localname___Person_12888) from stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888.T_testNoFixedSize___localname___Person_12888 to stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888.T_testNoFixedSize___localname___Person_12888 {
    public var age(get, set) : StdTypes.Int;
    function get_age():StdTypes.Int return this.age;
    function set_age(v:StdTypes.Int):StdTypes.Int {
        this.age = (v : stdgo.GoInt);
        return v;
    }
    public var weight(get, set) : StdTypes.Float;
    function get_weight():StdTypes.Float return this.weight;
    function set_weight(v:StdTypes.Float):StdTypes.Float {
        this.weight = (v : stdgo.GoFloat64);
        return v;
    }
    public var height(get, set) : StdTypes.Float;
    function get_height():StdTypes.Float return this.height;
    function set_height(v:StdTypes.Float):StdTypes.Float {
        this.height = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?age:StdTypes.Int, ?weight:StdTypes.Float, ?height:StdTypes.Float) this = new stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888.T_testNoFixedSize___localname___Person_12888((age : stdgo.GoInt), (weight : stdgo.GoFloat64), (height : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
