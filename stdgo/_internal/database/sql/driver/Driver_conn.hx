package stdgo._internal.database.sql.driver;
@:interface typedef Conn = stdgo.StructType & {
    @:interfacetypeffun
    function prepare(_query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_stmt.Stmt; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function close():stdgo.Error;
    @:interfacetypeffun
    function begin():{ var _0 : stdgo._internal.database.sql.driver.Driver_tx.Tx; var _1 : stdgo.Error; };
};
