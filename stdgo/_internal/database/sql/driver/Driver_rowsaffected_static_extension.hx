package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.RowsAffected_asInterface) class RowsAffected_static_extension {
    @:keep
    @:tdfield
    static public function rowsAffected( _v:stdgo._internal.database.sql.driver.Driver_rowsaffected.RowsAffected):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo._internal.database.sql.driver.Driver_rowsaffected.RowsAffected = _v;
        return { _0 : (_v : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lastInsertId( _:stdgo._internal.database.sql.driver.Driver_rowsaffected.RowsAffected):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_rowsaffected.RowsAffected = _;
        return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("LastInsertId is not supported by this driver" : stdgo.GoString)) };
    }
}
