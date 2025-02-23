package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypePrecisionScale = stdgo.StructType & {
    @:interfacetypeffun
    function columnTypePrecisionScale(_index:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; };
    function close():stdgo.Error;
    function columns():stdgo.Slice<stdgo.GoString>;
    function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
