package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_PushOptions_static_extension.PushOptions_static_extension) class PushOptions {
    public var method : stdgo.GoString = "";
    public var header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public function new(?method:stdgo.GoString, ?header:stdgo._internal.net.http.Http_Header.Header) {
        if (method != null) this.method = method;
        if (header != null) this.header = header;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PushOptions(method, header);
    }
}
