package stdgo.io.fs;
@:structInit @:using(stdgo.io.fs.Fs.PathError_static_extension) abstract PathError(stdgo._internal.io.fs.Fs_PathError.PathError) from stdgo._internal.io.fs.Fs_PathError.PathError to stdgo._internal.io.fs.Fs_PathError.PathError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?path:String, ?err:stdgo.Error) this = new stdgo._internal.io.fs.Fs_PathError.PathError((op : stdgo.GoString), (path : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
