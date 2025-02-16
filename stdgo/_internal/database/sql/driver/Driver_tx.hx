package stdgo._internal.database.sql.driver;
@:interface typedef Tx = stdgo.StructType & {
    @:interfacetypeffun
    function commit():stdgo.Error;
    @:interfacetypeffun
    function rollback():stdgo.Error;
};
