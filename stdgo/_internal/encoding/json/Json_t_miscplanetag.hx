package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_miscplanetag_static_extension.T_miscPlaneTag_static_extension) class T_miscPlaneTag {
    @:tag("`json:\"色は匂へど\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_miscPlaneTag(v);
    }
}
