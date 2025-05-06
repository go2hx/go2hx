package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_term_static_extension.T_term_static_extension) class T_term {
    public var _tilde : Bool = false;
    public var _typ : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_tilde:Bool, ?_typ:stdgo._internal.go.types.Types_type_.Type_) {
        if (_tilde != null) this._tilde = _tilde;
        if (_typ != null) this._typ = _typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_term(_tilde, _typ);
    }
}
