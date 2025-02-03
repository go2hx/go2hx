package stdgo.errors;
@:structInit @:using(stdgo.errors.Errors.T_joinError_static_extension) abstract T_joinError(stdgo._internal.errors.Errors_T_joinError.T_joinError) from stdgo._internal.errors.Errors_T_joinError.T_joinError to stdgo._internal.errors.Errors_T_joinError.T_joinError {
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_errs:Array<stdgo.Error>) this = new stdgo._internal.errors.Errors_T_joinError.T_joinError(([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
