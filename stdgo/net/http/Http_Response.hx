package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.Response_static_extension) abstract Response(stdgo._internal.net.http.Http_Response.Response) from stdgo._internal.net.http.Http_Response.Response to stdgo._internal.net.http.Http_Response.Response {
    public var status(get, set) : String;
    function get_status():String return this.status;
    function set_status(v:String):String {
        this.status = (v : stdgo.GoString);
        return v;
    }
    public var statusCode(get, set) : StdTypes.Int;
    function get_statusCode():StdTypes.Int return this.statusCode;
    function set_statusCode(v:StdTypes.Int):StdTypes.Int {
        this.statusCode = (v : stdgo.GoInt);
        return v;
    }
    public var proto(get, set) : String;
    function get_proto():String return this.proto;
    function set_proto(v:String):String {
        this.proto = (v : stdgo.GoString);
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
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
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
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var uncompressed(get, set) : Bool;
    function get_uncompressed():Bool return this.uncompressed;
    function set_uncompressed(v:Bool):Bool {
        this.uncompressed = v;
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public var request(get, set) : Request;
    function get_request():Request return this.request;
    function set_request(v:Request):Request {
        this.request = (v : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get_tLS():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        return v;
    }
    public function new(?status:String, ?statusCode:StdTypes.Int, ?proto:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?header:Header, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?contentLength:haxe.Int64, ?transferEncoding:Array<String>, ?close:Bool, ?uncompressed:Bool, ?trailer:Header, ?request:Request, ?tLS:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) this = new stdgo._internal.net.http.Http_Response.Response(
(status : stdgo.GoString),
(statusCode : stdgo.GoInt),
(proto : stdgo.GoString),
(protoMajor : stdgo.GoInt),
(protoMinor : stdgo.GoInt),
header,
body,
(contentLength : stdgo.GoInt64),
([for (i in transferEncoding) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
close,
uncompressed,
trailer,
(request : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>),
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
