package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_basiclatin5xtag_static_extension.T_basicLatin5xTag_static_extension) class T_basicLatin5xTag {
    @:tag("`json:\"PQRSTUVWXYZ_\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin5xTag(v);
    }
}
