package stdgo._internal.sync;
@:interface typedef Locker = stdgo.StructType & {
    @:interfacetypeffun
    function lock():Void;
    @:interfacetypeffun
    function unlock():Void;
};
