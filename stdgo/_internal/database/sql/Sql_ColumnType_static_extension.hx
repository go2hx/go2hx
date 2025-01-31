package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.database.sql.Sql.ColumnType_asInterface) class ColumnType_static_extension {
    @:keep
    @:tdfield
    static public function databaseTypeName( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):stdgo.GoString {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        return (@:checkr _ci ?? throw "null pointer dereference")._databaseType?.__copy__();
    }
    @:keep
    @:tdfield
    static public function nullable( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        var _nullable = false, _ok = false;
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : (@:checkr _ci ?? throw "null pointer dereference")._nullable, _1 : (@:checkr _ci ?? throw "null pointer dereference")._hasNullable };
            _nullable = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function scanType( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):stdgo._internal.reflect.Reflect_Type_.Type_ {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        return (@:checkr _ci ?? throw "null pointer dereference")._scanType;
    }
    @:keep
    @:tdfield
    static public function decimalSize( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; } {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        var _precision = (0 : stdgo.GoInt64), _scale = (0 : stdgo.GoInt64), _ok = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; } = { _0 : (@:checkr _ci ?? throw "null pointer dereference")._precision, _1 : (@:checkr _ci ?? throw "null pointer dereference")._scale, _2 : (@:checkr _ci ?? throw "null pointer dereference")._hasPrecisionScale };
            _precision = __tmp__._0;
            _scale = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function length_( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):{ var _0 : stdgo.GoInt64; var _1 : Bool; } {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        var _length = (0 : stdgo.GoInt64), _ok = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : Bool; } = { _0 : (@:checkr _ci ?? throw "null pointer dereference")._length, _1 : (@:checkr _ci ?? throw "null pointer dereference")._hasLength };
            _length = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function name( _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>):stdgo.GoString {
        @:recv var _ci:stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType> = _ci;
        return (@:checkr _ci ?? throw "null pointer dereference")._name?.__copy__();
    }
}
