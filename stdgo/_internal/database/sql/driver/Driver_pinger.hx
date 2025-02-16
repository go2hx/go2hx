package stdgo._internal.database.sql.driver;
@:interface typedef Pinger = stdgo.StructType & {
    @:interfacetypeffun
    function ping(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error;
};
