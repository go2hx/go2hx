package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.Request_static_extension) abstract Request(stdgo._internal.net.http.Http_Request.Request) from stdgo._internal.net.http.Http_Request.Request to stdgo._internal.net.http.Http_Request.Request {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var uRL(get, set) : stdgo._internal.net.url.Url_URL.URL;
    function get_uRL():stdgo._internal.net.url.Url_URL.URL return this.uRL;
    function set_uRL(v:stdgo._internal.net.url.Url_URL.URL):stdgo._internal.net.url.Url_URL.URL {
        this.uRL = (v : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
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
    public var getBody(get, set) : () -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; };
    function get_getBody():() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } return () -> this.getBody();
    function set_getBody(v:() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; }):() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
        this.getBody = v;
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
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public var form(get, set) : stdgo._internal.net.url.Url_Values.Values;
    function get_form():stdgo._internal.net.url.Url_Values.Values return this.form;
    function set_form(v:stdgo._internal.net.url.Url_Values.Values):stdgo._internal.net.url.Url_Values.Values {
        this.form = v;
        return v;
    }
    public var postForm(get, set) : stdgo._internal.net.url.Url_Values.Values;
    function get_postForm():stdgo._internal.net.url.Url_Values.Values return this.postForm;
    function set_postForm(v:stdgo._internal.net.url.Url_Values.Values):stdgo._internal.net.url.Url_Values.Values {
        this.postForm = v;
        return v;
    }
    public var multipartForm(get, set) : stdgo._internal.mime.multipart.Multipart_Form.Form;
    function get_multipartForm():stdgo._internal.mime.multipart.Multipart_Form.Form return this.multipartForm;
    function set_multipartForm(v:stdgo._internal.mime.multipart.Multipart_Form.Form):stdgo._internal.mime.multipart.Multipart_Form.Form {
        this.multipartForm = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>);
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public var remoteAddr(get, set) : String;
    function get_remoteAddr():String return this.remoteAddr;
    function set_remoteAddr(v:String):String {
        this.remoteAddr = (v : stdgo.GoString);
        return v;
    }
    public var requestURI(get, set) : String;
    function get_requestURI():String return this.requestURI;
    function set_requestURI(v:String):String {
        this.requestURI = (v : stdgo.GoString);
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get_tLS():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        return v;
    }
    public var cancel(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get_cancel():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this.cancel;
    function set_cancel(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this.cancel = (v : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        return v;
    }
    public var response(get, set) : Response;
    function get_response():Response return this.response;
    function set_response(v:Response):Response {
        this.response = (v : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return v;
    }
    public function new(?method:String, ?uRL:stdgo._internal.net.url.Url_URL.URL, ?proto:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?header:Header, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?getBody:() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; }, ?contentLength:haxe.Int64, ?transferEncoding:Array<String>, ?close:Bool, ?host:String, ?form:stdgo._internal.net.url.Url_Values.Values, ?postForm:stdgo._internal.net.url.Url_Values.Values, ?multipartForm:stdgo._internal.mime.multipart.Multipart_Form.Form, ?trailer:Header, ?remoteAddr:String, ?requestURI:String, ?tLS:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, ?cancel:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?response:Response) this = new stdgo._internal.net.http.Http_Request.Request(
(method : stdgo.GoString),
(uRL : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>),
(proto : stdgo.GoString),
(protoMajor : stdgo.GoInt),
(protoMinor : stdgo.GoInt),
header,
body,
getBody,
(contentLength : stdgo.GoInt64),
([for (i in transferEncoding) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
close,
(host : stdgo.GoString),
form,
postForm,
(multipartForm : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>),
trailer,
(remoteAddr : stdgo.GoString),
(requestURI : stdgo.GoString),
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>),
(cancel : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>),
(response : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
