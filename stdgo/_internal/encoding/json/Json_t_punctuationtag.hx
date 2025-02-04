package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_punctuationtag_static_extension.T_punctuationTag_static_extension) class T_punctuationTag {
    @:tag("`json:\"!#$%&()*+-./:;<=>?@[]^_{|}~ \"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_punctuationTag(v);
    }
}
