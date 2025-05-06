package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_actiondesc_static_extension.T_actionDesc_static_extension) class T_actionDesc {
    public var _pos : stdgo._internal.go.types.Types_t_positioner.T_positioner = (null : stdgo._internal.go.types.Types_t_positioner.T_positioner);
    public var _format : stdgo.GoString = "";
    public var _args : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?_pos:stdgo._internal.go.types.Types_t_positioner.T_positioner, ?_format:stdgo.GoString, ?_args:stdgo.Slice<stdgo.AnyInterface>) {
        if (_pos != null) this._pos = _pos;
        if (_format != null) this._format = _format;
        if (_args != null) this._args = _args;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_actionDesc(_pos, _format, _args);
    }
}
