package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_errordesc_static_extension.T_errorDesc_static_extension) class T_errorDesc {
    public var _posn : stdgo._internal.go.types.Types_t_positioner.T_positioner = (null : stdgo._internal.go.types.Types_t_positioner.T_positioner);
    public var _format : stdgo.GoString = "";
    public var _args : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?_posn:stdgo._internal.go.types.Types_t_positioner.T_positioner, ?_format:stdgo.GoString, ?_args:stdgo.Slice<stdgo.AnyInterface>) {
        if (_posn != null) this._posn = _posn;
        if (_format != null) this._format = _format;
        if (_args != null) this._args = _args;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorDesc(_posn, _format, _args);
    }
}
