package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_posvers_static_extension.T_posVers_static_extension) class T_posVers {
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _vers : stdgo._internal.go.types.Types_t_version.T_version = ({} : stdgo._internal.go.types.Types_t_version.T_version);
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_vers:stdgo._internal.go.types.Types_t_version.T_version) {
        if (_pos != null) this._pos = _pos;
        if (_vers != null) this._vers = _vers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_posVers(_pos, _vers);
    }
}
