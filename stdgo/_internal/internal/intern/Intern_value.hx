package stdgo._internal.internal.intern;
@:structInit @:using(stdgo._internal.internal.intern.Intern_value_static_extension.Value_static_extension) class Value {
    @:optional
    public var __1 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _cmpVal : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _resurrected : Bool = false;
    public function new(?__1:stdgo.GoArray<() -> Void>, ?_cmpVal:stdgo.AnyInterface, ?_resurrected:Bool) {
        if (__1 != null) this.__1 = __1;
        if (_cmpVal != null) this._cmpVal = _cmpVal;
        if (_resurrected != null) this._resurrected = _resurrected;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(__1, _cmpVal, _resurrected);
    }
}
