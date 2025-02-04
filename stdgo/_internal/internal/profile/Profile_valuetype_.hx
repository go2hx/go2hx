package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_valuetype__static_extension.ValueType__static_extension) class ValueType_ {
    public var type : stdgo.GoString = "";
    public var unit : stdgo.GoString = "";
    public var _typeX : stdgo.GoInt64 = 0;
    public var _unitX : stdgo.GoInt64 = 0;
    public function new(?type:stdgo.GoString, ?unit:stdgo.GoString, ?_typeX:stdgo.GoInt64, ?_unitX:stdgo.GoInt64) {
        if (type != null) this.type = type;
        if (unit != null) this.unit = unit;
        if (_typeX != null) this._typeX = _typeX;
        if (_unitX != null) this._unitX = _unitX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueType_(type, unit, _typeX, _unitX);
    }
}
