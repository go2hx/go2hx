package stdgo._internal.net;
@:interface typedef Error = stdgo.StructType & {
    > stdgo.Error,
    @:interfacetypeffun
    function timeout():Bool;
    @:interfacetypeffun
    function temporary():Bool;
};
