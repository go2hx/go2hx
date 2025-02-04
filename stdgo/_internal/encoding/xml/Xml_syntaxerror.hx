package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_syntaxerror_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var msg : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public function new(?msg:stdgo.GoString, ?line:stdgo.GoInt) {
        if (msg != null) this.msg = msg;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(msg, line);
    }
}
