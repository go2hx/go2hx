package stdgo._internal.database.sql.driver;
@:interface typedef RowsNextResultSet = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_rows.Rows,
    @:interfacetypeffun
    function hasNextResultSet():Bool;
    @:interfacetypeffun
    function nextResultSet():stdgo.Error;
};
