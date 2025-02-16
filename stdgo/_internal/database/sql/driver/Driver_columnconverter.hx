package stdgo._internal.database.sql.driver;
@:interface typedef ColumnConverter = stdgo.StructType & {
    @:interfacetypeffun
    function columnConverter(_idx:stdgo.GoInt):stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter;
};
