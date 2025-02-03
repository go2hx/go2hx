package stdgo.net.url;
@:structInit @:using(stdgo.net.url.Url.Error_static_extension) abstract Error(stdgo._internal.net.url.Url_Error.Error) from stdgo._internal.net.url.Url_Error.Error to stdgo._internal.net.url.Url_Error.Error {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?uRL:String, ?err:stdgo.Error) this = new stdgo._internal.net.url.Url_Error.Error((op : stdgo.GoString), (uRL : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
