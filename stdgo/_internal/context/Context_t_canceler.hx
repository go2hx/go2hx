package stdgo._internal.context;
@:interface typedef T_canceler = stdgo.StructType & {
    @:interfacetypeffun
    function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
    @:interfacetypeffun
    function done():stdgo.Chan<{ }>;
};
