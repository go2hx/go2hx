package stdgo._internal.encoding.asn1;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_syntaxerror_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var msg : stdgo.GoString = "";
    public function new(?msg:stdgo.GoString) {
        if (msg != null) this.msg = msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(msg);
    }
}
