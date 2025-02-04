package stdgo._internal.net.url;
@:structInit @:using(stdgo._internal.net.url.Url_error_static_extension.Error_static_extension) class Error {
    public var op : stdgo.GoString = "";
    public var uRL : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?uRL:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (uRL != null) this.uRL = uRL;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(op, uRL, err);
    }
}
