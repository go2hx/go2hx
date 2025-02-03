package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.StructuralError_static_extension) abstract StructuralError(stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError) from stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError to stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?msg:String) this = new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError((msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
