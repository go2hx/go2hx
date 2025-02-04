package stdgo._internal.internal.intern;
@:structInit @:using(stdgo._internal.internal.intern.Intern_t_key_static_extension.T_key_static_extension) class T_key {
    public var _s : stdgo.GoString = "";
    public var _cmpVal : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _isString : Bool = false;
    public function new(?_s:stdgo.GoString, ?_cmpVal:stdgo.AnyInterface, ?_isString:Bool) {
        if (_s != null) this._s = _s;
        if (_cmpVal != null) this._cmpVal = _cmpVal;
        if (_isString != null) this._isString = _isString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_key(_s, _cmpVal, _isString);
    }
}
