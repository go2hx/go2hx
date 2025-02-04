package stdgo._internal.os.exec;
@:structInit @:using(stdgo._internal.os.exec.Exec_error_static_extension.Error_static_extension) class Error {
    public var name : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?name:stdgo.GoString, ?err:stdgo.Error) {
        if (name != null) this.name = name;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(name, err);
    }
}
