package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_codeNode_static_extension) abstract T_codeNode(stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode) from stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode to stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var kids(get, set) : Array<T_codeNode>;
    function get_kids():Array<T_codeNode> return [for (i in this.kids) i];
    function set_kids(v:Array<T_codeNode>):Array<T_codeNode> {
        this.kids = ([for (i in v) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>>);
        return v;
    }
    public var cLWeight(get, set) : StdTypes.Float;
    function get_cLWeight():StdTypes.Float return this.cLWeight;
    function set_cLWeight(v:StdTypes.Float):StdTypes.Float {
        this.cLWeight = (v : stdgo.GoFloat64);
        return v;
    }
    public var touches(get, set) : StdTypes.Int;
    function get_touches():StdTypes.Int return this.touches;
    function set_touches(v:StdTypes.Int):StdTypes.Int {
        this.touches = (v : stdgo.GoInt);
        return v;
    }
    public var minT(get, set) : haxe.Int64;
    function get_minT():haxe.Int64 return this.minT;
    function set_minT(v:haxe.Int64):haxe.Int64 {
        this.minT = (v : stdgo.GoInt64);
        return v;
    }
    public var maxT(get, set) : haxe.Int64;
    function get_maxT():haxe.Int64 return this.maxT;
    function set_maxT(v:haxe.Int64):haxe.Int64 {
        this.maxT = (v : stdgo.GoInt64);
        return v;
    }
    public var meanT(get, set) : haxe.Int64;
    function get_meanT():haxe.Int64 return this.meanT;
    function set_meanT(v:haxe.Int64):haxe.Int64 {
        this.meanT = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?name:String, ?kids:Array<T_codeNode>, ?cLWeight:StdTypes.Float, ?touches:StdTypes.Int, ?minT:haxe.Int64, ?maxT:haxe.Int64, ?meanT:haxe.Int64) this = new stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode((name : stdgo.GoString), ([for (i in kids) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>>), (cLWeight : stdgo.GoFloat64), (touches : stdgo.GoInt), (minT : stdgo.GoInt64), (maxT : stdgo.GoInt64), (meanT : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
