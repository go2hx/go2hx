package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_linkerror_static_extension.LinkError_static_extension) class LinkError {
    public var op : stdgo.GoString = "";
    public var old : stdgo.GoString = "";
    public var new_ : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?old:stdgo.GoString, ?new_:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (old != null) this.old = old;
        if (new_ != null) this.new_ = new_;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LinkError(op, old, new_, err);
    }
}
