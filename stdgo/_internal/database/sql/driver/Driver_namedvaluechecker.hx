package stdgo._internal.database.sql.driver;
@:interface typedef NamedValueChecker = stdgo.StructType & {
    @:interfacetypeffun
    function checkNamedValue(_0:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):stdgo.Error;
};
