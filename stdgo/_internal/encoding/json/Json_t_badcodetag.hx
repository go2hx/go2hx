package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_badcodetag_static_extension.T_badCodeTag_static_extension) class T_badCodeTag {
    @:tag("`json:\" !\\\"#&\'()*+,.\"`")
    public var z : stdgo.GoString = "";
    public function new(?z:stdgo.GoString) {
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badCodeTag(z);
    }
}
