package stdgo._internal.encoding.json;
@:structInit class Small {
    public var tag : stdgo.GoString = "";
    public function new(?tag:stdgo.GoString) {
        if (tag != null) this.tag = tag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Small(tag);
    }
}
