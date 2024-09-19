package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.T_noRows_asInterface) class T_noRows_static_extension {
    @:keep
    static public function rowsAffected( _:stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows = _?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("no RowsAffected available after DDL statement" : stdgo.GoString)) };
    }
    @:keep
    static public function lastInsertId( _:stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows = _?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("no LastInsertId available after DDL statement" : stdgo.GoString)) };
    }
}
