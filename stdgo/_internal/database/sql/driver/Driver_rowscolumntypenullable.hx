package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeNullable = stdgo.StructType & {
    @:interfacetypeffun
    function columnTypeNullable(_index:stdgo.GoInt):{ var _0 : Bool; var _1 : Bool; };
    function close():stdgo.Error;
    function columns():stdgo.Slice<stdgo.GoString>;
    function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
