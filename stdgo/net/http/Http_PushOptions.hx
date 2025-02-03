package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.PushOptions_static_extension) abstract PushOptions(stdgo._internal.net.http.Http_PushOptions.PushOptions) from stdgo._internal.net.http.Http_PushOptions.PushOptions to stdgo._internal.net.http.Http_PushOptions.PushOptions {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public function new(?method:String, ?header:Header) this = new stdgo._internal.net.http.Http_PushOptions.PushOptions((method : stdgo.GoString), header);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
