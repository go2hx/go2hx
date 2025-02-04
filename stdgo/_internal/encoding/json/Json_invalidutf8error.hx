package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_invalidutf8error_static_extension.InvalidUTF8Error_static_extension) class InvalidUTF8Error {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InvalidUTF8Error(s);
    }
}
