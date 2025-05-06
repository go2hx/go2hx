package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_error__static_extension.T_error__static_extension) class T_error_ {
    public var _desc : stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>);
    public var _code : stdgo._internal.internal.types.errors.Errors_code.Code = ((0 : stdgo.GoInt) : stdgo._internal.internal.types.errors.Errors_code.Code);
    public var _soft : Bool = false;
    public function new(?_desc:stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>, ?_code:stdgo._internal.internal.types.errors.Errors_code.Code, ?_soft:Bool) {
        if (_desc != null) this._desc = _desc;
        if (_code != null) this._code = _code;
        if (_soft != null) this._soft = _soft;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_error_(_desc, _code, _soft);
    }
}
