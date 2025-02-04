package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_execerror_static_extension.ExecError_static_extension) class ExecError {
    public var name : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?name:stdgo.GoString, ?err:stdgo.Error) {
        if (name != null) this.name = name;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExecError(name, err);
    }
}
