package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_percentslashtag_static_extension.T_percentSlashTag_static_extension) class T_percentSlashTag {
    @:tag("`json:\"text/html%\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_percentSlashTag(v);
    }
}
