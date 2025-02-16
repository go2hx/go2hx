package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeLength = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_rows.Rows,
    @:interfacetypeffun
    function columnTypeLength(_index:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : Bool; };
};
