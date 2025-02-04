package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_parseerror_static_extension.ParseError_static_extension) class ParseError {
    public var type : stdgo.GoString = "";
    public var text : stdgo.GoString = "";
    public function new(?type:stdgo.GoString, ?text:stdgo.GoString) {
        if (type != null) this.type = type;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseError(type, text);
    }
}
