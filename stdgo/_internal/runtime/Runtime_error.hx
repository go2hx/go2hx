package stdgo._internal.runtime;
@:interface typedef Error = stdgo.StructType & {
    > stdgo.Error,
    @:interfacetypeffun
    function runtimeError():Void;
};
