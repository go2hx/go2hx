package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_small_static_extension.Small_static_extension) class Small {
    public var tag : stdgo.GoString = "";
    public function new(?tag:stdgo.GoString) {
        if (tag != null) this.tag = tag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Small(tag);
    }
}
