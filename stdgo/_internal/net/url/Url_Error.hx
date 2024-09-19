package stdgo._internal.net.url;
@:structInit @:using(stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension) class Error {
    public var op : stdgo.GoString = "";
    public var url : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?url:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (url != null) this.url = url;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(op, url, err);
    }
}
