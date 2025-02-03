package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_transferWriter_static_extension) abstract T_transferWriter(stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter) from stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter to stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_body():stdgo._internal.io.Io_Reader.Reader return this.body;
    function set_body(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.body = v;
        return v;
    }
    public var bodyCloser(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get_bodyCloser():stdgo._internal.io.Io_Closer.Closer return this.bodyCloser;
    function set_bodyCloser(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this.bodyCloser = v;
        return v;
    }
    public var responseToHEAD(get, set) : Bool;
    function get_responseToHEAD():Bool return this.responseToHEAD;
    function set_responseToHEAD(v:Bool):Bool {
        this.responseToHEAD = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = (v : stdgo.GoInt64);
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public var isResponse(get, set) : Bool;
    function get_isResponse():Bool return this.isResponse;
    function set_isResponse(v:Bool):Bool {
        this.isResponse = v;
        return v;
    }
    public var flushHeaders(get, set) : Bool;
    function get_flushHeaders():Bool return this.flushHeaders;
    function set_flushHeaders(v:Bool):Bool {
        this.flushHeaders = v;
        return v;
    }
    public var byteReadCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>;
    function get_byteReadCh():stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult> return this.byteReadCh;
    function set_byteReadCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>):stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult> {
        this.byteReadCh = (v : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>);
        return v;
    }
    public function new(?method:String, ?body:stdgo._internal.io.Io_Reader.Reader, ?bodyCloser:stdgo._internal.io.Io_Closer.Closer, ?responseToHEAD:Bool, ?contentLength:haxe.Int64, ?close:Bool, ?transferEncoding:Array<String>, ?header:Header, ?trailer:Header, ?isResponse:Bool, ?flushHeaders:Bool, ?byteReadCh:stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>) this = new stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter(
(method : stdgo.GoString),
body,
bodyCloser,
responseToHEAD,
(contentLength : stdgo.GoInt64),
close,
([for (i in transferEncoding) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
header,
trailer,
isResponse,
flushHeaders,
(byteReadCh : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
