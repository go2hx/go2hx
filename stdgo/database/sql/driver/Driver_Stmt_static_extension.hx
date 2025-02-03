package stdgo.database.sql.driver;
class Stmt_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.query(t, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.exec(t, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numInput(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt):StdTypes.Int {
        return stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.numInput(t);
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.close(t);
    }
}
