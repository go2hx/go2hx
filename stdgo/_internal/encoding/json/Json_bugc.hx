package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_bugc_static_extension.BugC_static_extension) class BugC {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugC(s);
    }
}
