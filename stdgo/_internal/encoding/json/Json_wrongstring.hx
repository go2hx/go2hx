package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_wrongstring_static_extension.WrongString_static_extension) class WrongString {
    @:tag("`json:\"result,string\"`")
    public var message : stdgo.GoString = "";
    public function new(?message:stdgo.GoString) {
        if (message != null) this.message = message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WrongString(message);
    }
}
