package stdgo._internal.encoding.asn1;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_structuralerror_static_extension.StructuralError_static_extension) class StructuralError {
    public var msg : stdgo.GoString = "";
    public function new(?msg:stdgo.GoString) {
        if (msg != null) this.msg = msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructuralError(msg);
    }
}
