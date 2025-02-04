package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_writeerror_static_extension.T_writeError_static_extension) class T_writeError {
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeError(err);
    }
}
