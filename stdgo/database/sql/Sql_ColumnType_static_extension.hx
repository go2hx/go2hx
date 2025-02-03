package stdgo.database.sql;
class ColumnType_static_extension {
    static public function databaseTypeName(_ci:ColumnType):String {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
        return stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.databaseTypeName(_ci);
    }
    static public function nullable(_ci:ColumnType):stdgo.Tuple<Bool, Bool> {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
        return {
            final obj = stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.nullable(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scanType(_ci:ColumnType):stdgo._internal.reflect.Reflect_Type_.Type_ {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
        return stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.scanType(_ci);
    }
    static public function decimalSize(_ci:ColumnType):stdgo.Tuple.Tuple3<haxe.Int64, haxe.Int64, Bool> {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
        return {
            final obj = stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.decimalSize(_ci);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function length_(_ci:ColumnType):stdgo.Tuple<haxe.Int64, Bool> {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
        return {
            final obj = stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.length_(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function name(_ci:ColumnType):String {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
        return stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.name(_ci);
    }
}
