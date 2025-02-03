package stdgo.os.exec;
@:structInit @:using(stdgo.os.exec.Exec.Error_static_extension) abstract Error(stdgo._internal.os.exec.Exec_Error.Error) from stdgo._internal.os.exec.Exec_Error.Error to stdgo._internal.os.exec.Exec_Error.Error {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?name:String, ?err:stdgo.Error) this = new stdgo._internal.os.exec.Exec_Error.Error((name : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
