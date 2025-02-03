package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.ColumnType_static_extension) abstract ColumnType(stdgo._internal.database.sql.Sql_ColumnType.ColumnType) from stdgo._internal.database.sql.Sql_ColumnType.ColumnType to stdgo._internal.database.sql.Sql_ColumnType.ColumnType {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _hasNullable(get, set) : Bool;
    function get__hasNullable():Bool return this._hasNullable;
    function set__hasNullable(v:Bool):Bool {
        this._hasNullable = v;
        return v;
    }
    public var _hasLength(get, set) : Bool;
    function get__hasLength():Bool return this._hasLength;
    function set__hasLength(v:Bool):Bool {
        this._hasLength = v;
        return v;
    }
    public var _hasPrecisionScale(get, set) : Bool;
    function get__hasPrecisionScale():Bool return this._hasPrecisionScale;
    function set__hasPrecisionScale(v:Bool):Bool {
        this._hasPrecisionScale = v;
        return v;
    }
    public var _nullable(get, set) : Bool;
    function get__nullable():Bool return this._nullable;
    function set__nullable(v:Bool):Bool {
        this._nullable = v;
        return v;
    }
    public var _length(get, set) : haxe.Int64;
    function get__length():haxe.Int64 return this._length;
    function set__length(v:haxe.Int64):haxe.Int64 {
        this._length = (v : stdgo.GoInt64);
        return v;
    }
    public var _databaseType(get, set) : String;
    function get__databaseType():String return this._databaseType;
    function set__databaseType(v:String):String {
        this._databaseType = (v : stdgo.GoString);
        return v;
    }
    public var _precision(get, set) : haxe.Int64;
    function get__precision():haxe.Int64 return this._precision;
    function set__precision(v:haxe.Int64):haxe.Int64 {
        this._precision = (v : stdgo.GoInt64);
        return v;
    }
    public var _scale(get, set) : haxe.Int64;
    function get__scale():haxe.Int64 return this._scale;
    function set__scale(v:haxe.Int64):haxe.Int64 {
        this._scale = (v : stdgo.GoInt64);
        return v;
    }
    public var _scanType(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__scanType():stdgo._internal.reflect.Reflect_Type_.Type_ return this._scanType;
    function set__scanType(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._scanType = v;
        return v;
    }
    public function new(?_name:String, ?_hasNullable:Bool, ?_hasLength:Bool, ?_hasPrecisionScale:Bool, ?_nullable:Bool, ?_length:haxe.Int64, ?_databaseType:String, ?_precision:haxe.Int64, ?_scale:haxe.Int64, ?_scanType:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.database.sql.Sql_ColumnType.ColumnType((_name : stdgo.GoString), _hasNullable, _hasLength, _hasPrecisionScale, _nullable, (_length : stdgo.GoInt64), (_databaseType : stdgo.GoString), (_precision : stdgo.GoInt64), (_scale : stdgo.GoInt64), _scanType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
