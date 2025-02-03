package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_wrapErrors_static_extension) abstract T_wrapErrors(stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors) from stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors to stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_msg:String, ?_errs:Array<stdgo.Error>) this = new stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors((_msg : stdgo.GoString), ([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
