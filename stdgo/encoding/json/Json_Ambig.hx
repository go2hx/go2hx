package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Ambig_static_extension) abstract Ambig(stdgo._internal.encoding.json.Json_Ambig.Ambig) from stdgo._internal.encoding.json.Json_Ambig.Ambig to stdgo._internal.encoding.json.Json_Ambig.Ambig {
    public var first(get, set) : StdTypes.Int;
    function get_first():StdTypes.Int return this.first;
    function set_first(v:StdTypes.Int):StdTypes.Int {
        this.first = (v : stdgo.GoInt);
        return v;
    }
    public var second(get, set) : StdTypes.Int;
    function get_second():StdTypes.Int return this.second;
    function set_second(v:StdTypes.Int):StdTypes.Int {
        this.second = (v : stdgo.GoInt);
        return v;
    }
    public function new(?first:StdTypes.Int, ?second:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Ambig.Ambig((first : stdgo.GoInt), (second : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
