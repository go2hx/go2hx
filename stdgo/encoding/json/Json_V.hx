package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.V_static_extension) abstract V(stdgo._internal.encoding.json.Json_V.V) from stdgo._internal.encoding.json.Json_V.V to stdgo._internal.encoding.json.Json_V.V {
    public var f1(get, set) : stdgo.AnyInterface;
    function get_f1():stdgo.AnyInterface return this.f1;
    function set_f1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.f1 = (v : stdgo.AnyInterface);
        return v;
    }
    public var f2(get, set) : StdTypes.Int;
    function get_f2():StdTypes.Int return this.f2;
    function set_f2(v:StdTypes.Int):StdTypes.Int {
        this.f2 = (v : stdgo.GoInt32);
        return v;
    }
    public var f3(get, set) : Number;
    function get_f3():Number return this.f3;
    function set_f3(v:Number):Number {
        this.f3 = v;
        return v;
    }
    public var f4(get, set) : VOuter;
    function get_f4():VOuter return this.f4;
    function set_f4(v:VOuter):VOuter {
        this.f4 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter>);
        return v;
    }
    public function new(?f1:stdgo.AnyInterface, ?f2:StdTypes.Int, ?f3:Number, ?f4:VOuter) this = new stdgo._internal.encoding.json.Json_V.V((f1 : stdgo.AnyInterface), (f2 : stdgo.GoInt32), f3, (f4 : stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
