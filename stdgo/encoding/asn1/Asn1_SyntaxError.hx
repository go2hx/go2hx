package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError) from stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError to stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?msg:String) this = new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError((msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
