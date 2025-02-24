package stdgo._internal.database.sql;
@:interface typedef Scanner = stdgo.StructType & {
    @:interfacetypeffun
    function scan(_src:stdgo.AnyInterface):stdgo.Error;
};
