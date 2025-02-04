package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_pushoptions_static_extension.PushOptions_static_extension) class PushOptions {
    public var method : stdgo.GoString = "";
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public function new(?method:stdgo.GoString, ?header:stdgo._internal.net.http.Http_header.Header) {
        if (method != null) this.method = method;
        if (header != null) this.header = header;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PushOptions(method, header);
    }
}
