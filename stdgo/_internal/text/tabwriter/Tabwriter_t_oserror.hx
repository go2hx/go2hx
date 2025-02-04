package stdgo._internal.text.tabwriter;
@:structInit @:using(stdgo._internal.text.tabwriter.Tabwriter_t_oserror_static_extension.T_osError_static_extension) class T_osError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_osError(_err);
    }
}
