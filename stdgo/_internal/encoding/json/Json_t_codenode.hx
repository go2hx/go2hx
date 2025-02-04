package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_codenode_static_extension.T_codeNode_static_extension) class T_codeNode {
    @:tag("`json:\"name\"`")
    public var name : stdgo.GoString = "";
    @:tag("`json:\"kids\"`")
    public var kids : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>>);
    @:tag("`json:\"cl_weight\"`")
    public var cLWeight : stdgo.GoFloat64 = 0;
    @:tag("`json:\"touches\"`")
    public var touches : stdgo.GoInt = 0;
    @:tag("`json:\"min_t\"`")
    public var minT : stdgo.GoInt64 = 0;
    @:tag("`json:\"max_t\"`")
    public var maxT : stdgo.GoInt64 = 0;
    @:tag("`json:\"mean_t\"`")
    public var meanT : stdgo.GoInt64 = 0;
    public function new(?name:stdgo.GoString, ?kids:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>>, ?cLWeight:stdgo.GoFloat64, ?touches:stdgo.GoInt, ?minT:stdgo.GoInt64, ?maxT:stdgo.GoInt64, ?meanT:stdgo.GoInt64) {
        if (name != null) this.name = name;
        if (kids != null) this.kids = kids;
        if (cLWeight != null) this.cLWeight = cLWeight;
        if (touches != null) this.touches = touches;
        if (minT != null) this.minT = minT;
        if (maxT != null) this.maxT = maxT;
        if (meanT != null) this.meanT = meanT;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeNode(name, kids, cLWeight, touches, minT, maxT, meanT);
    }
}
