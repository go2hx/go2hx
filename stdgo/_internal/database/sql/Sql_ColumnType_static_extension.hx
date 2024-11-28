package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.ColumnType_asInterface) class ColumnType_static_extension {
    @:keep
    static public function databaseTypeName( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):stdgo.GoString {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        return _ci._databaseType?.__copy__();
    }
    @:keep
    static public function nullable( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        var _nullable = false, _ok = false;
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _ci._nullable, _1 : _ci._hasNullable };
            _nullable = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function scanType( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):stdgo._internal.reflect.Reflect_Type_.Type_ {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        return _ci._scanType;
    }
    @:keep
    static public function decimalSize( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; } {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        var _precision = (0 : stdgo.GoInt64), _scale = (0 : stdgo.GoInt64), _ok = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; } = { _0 : _ci._precision, _1 : _ci._scale, _2 : _ci._hasPrecisionScale };
            _precision = __tmp__._0;
            _scale = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    static public function length_( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):{ var _0 : stdgo.GoInt64; var _1 : Bool; } {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        var _length = (0 : stdgo.GoInt64), _ok = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : Bool; } = { _0 : _ci._length, _1 : _ci._hasLength };
            _length = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function name( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):stdgo.GoString {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        return _ci._name?.__copy__();
    }
}
