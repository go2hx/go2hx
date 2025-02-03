package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_transferReader_static_extension) abstract T_transferReader(stdgo._internal.net.http.Http_T_transferReader.T_transferReader) from stdgo._internal.net.http.Http_T_transferReader.T_transferReader to stdgo._internal.net.http.Http_T_transferReader.T_transferReader {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var statusCode(get, set) : StdTypes.Int;
    function get_statusCode():StdTypes.Int return this.statusCode;
    function set_statusCode(v:StdTypes.Int):StdTypes.Int {
        this.statusCode = (v : stdgo.GoInt);
        return v;
    }
    public var requestMethod(get, set) : String;
    function get_requestMethod():String return this.requestMethod;
    function set_requestMethod(v:String):String {
        this.requestMethod = (v : stdgo.GoString);
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = (v : stdgo.GoInt);
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = (v : stdgo.GoInt);
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_ReadCloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = (v : stdgo.GoInt64);
        return v;
    }
    public var chunked(get, set) : Bool;
    function get_chunked():Bool return this.chunked;
    function set_chunked(v:Bool):Bool {
        this.chunked = v;
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public function new(?header:Header, ?statusCode:StdTypes.Int, ?requestMethod:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?contentLength:haxe.Int64, ?chunked:Bool, ?close:Bool, ?trailer:Header) this = new stdgo._internal.net.http.Http_T_transferReader.T_transferReader(header, (statusCode : stdgo.GoInt), (requestMethod : stdgo.GoString), (protoMajor : stdgo.GoInt), (protoMinor : stdgo.GoInt), body, (contentLength : stdgo.GoInt64), chunked, close, trailer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
