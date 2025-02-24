package stdgo._internal.sync;
@:interface typedef PoolDequeue = stdgo.StructType & {
    @:interfacetypeffun
    function pushHead(_val:stdgo.AnyInterface):Bool;
    @:interfacetypeffun
    function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:interfacetypeffun
    function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
};
