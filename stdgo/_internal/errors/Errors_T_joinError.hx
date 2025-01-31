package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
@:structInit @:using(stdgo._internal.errors.Errors_T_joinError_static_extension.T_joinError_static_extension) class T_joinError {
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_errs:stdgo.Slice<stdgo.Error>) {
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_joinError(_errs);
    }
}
