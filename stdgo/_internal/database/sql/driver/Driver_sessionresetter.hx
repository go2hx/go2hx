package stdgo._internal.database.sql.driver;
@:interface typedef SessionResetter = stdgo.StructType & {
    @:interfacetypeffun
    function resetSession(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error;
};
