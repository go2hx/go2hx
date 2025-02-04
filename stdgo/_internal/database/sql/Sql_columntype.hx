package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_columntype_static_extension.ColumnType_static_extension) class ColumnType {
    public var _name : stdgo.GoString = "";
    public var _hasNullable : Bool = false;
    public var _hasLength : Bool = false;
    public var _hasPrecisionScale : Bool = false;
    public var _nullable : Bool = false;
    public var _length : stdgo.GoInt64 = 0;
    public var _databaseType : stdgo.GoString = "";
    public var _precision : stdgo.GoInt64 = 0;
    public var _scale : stdgo.GoInt64 = 0;
    public var _scanType : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public function new(?_name:stdgo.GoString, ?_hasNullable:Bool, ?_hasLength:Bool, ?_hasPrecisionScale:Bool, ?_nullable:Bool, ?_length:stdgo.GoInt64, ?_databaseType:stdgo.GoString, ?_precision:stdgo.GoInt64, ?_scale:stdgo.GoInt64, ?_scanType:stdgo._internal.reflect.Reflect_type_.Type_) {
        if (_name != null) this._name = _name;
        if (_hasNullable != null) this._hasNullable = _hasNullable;
        if (_hasLength != null) this._hasLength = _hasLength;
        if (_hasPrecisionScale != null) this._hasPrecisionScale = _hasPrecisionScale;
        if (_nullable != null) this._nullable = _nullable;
        if (_length != null) this._length = _length;
        if (_databaseType != null) this._databaseType = _databaseType;
        if (_precision != null) this._precision = _precision;
        if (_scale != null) this._scale = _scale;
        if (_scanType != null) this._scanType = _scanType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ColumnType(_name, _hasNullable, _hasLength, _hasPrecisionScale, _nullable, _length, _databaseType, _precision, _scale, _scanType);
    }
}
