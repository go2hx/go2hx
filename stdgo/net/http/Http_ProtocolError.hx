package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.ProtocolError_static_extension) abstract ProtocolError(stdgo._internal.net.http.Http_ProtocolError.ProtocolError) from stdgo._internal.net.http.Http_ProtocolError.ProtocolError to stdgo._internal.net.http.Http_ProtocolError.ProtocolError {
    public var errorString(get, set) : String;
    function get_errorString():String return this.errorString;
    function set_errorString(v:String):String {
        this.errorString = (v : stdgo.GoString);
        return v;
    }
    public function new(?errorString:String) this = new stdgo._internal.net.http.Http_ProtocolError.ProtocolError((errorString : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
