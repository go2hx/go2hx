package stdgo.os;
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) abstract LinkError(stdgo._internal.os.Os_LinkError.LinkError) from stdgo._internal.os.Os_LinkError.LinkError to stdgo._internal.os.Os_LinkError.LinkError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var old(get, set) : String;
    function get_old():String return this.old;
    function set_old(v:String):String {
        this.old = (v : stdgo.GoString);
        return v;
    }
    public var new_(get, set) : String;
    function get_new_():String return this.new_;
    function set_new_(v:String):String {
        this.new_ = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?old:String, ?new_:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os_LinkError.LinkError((op : stdgo.GoString), (old : stdgo.GoString), (new_ : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
