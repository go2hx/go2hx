package stdgo._internal.context;
@:interface typedef Context = stdgo.StructType & {
    @:interfacetypeffun
    function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:interfacetypeffun
    function done():stdgo.Chan<{ }>;
    @:interfacetypeffun
    function err():stdgo.Error;
    @:interfacetypeffun
    function value(_key:stdgo.AnyInterface):stdgo.AnyInterface;
};
