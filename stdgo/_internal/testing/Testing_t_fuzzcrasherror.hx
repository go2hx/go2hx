package stdgo._internal.testing;
@:interface typedef T_fuzzCrashError = stdgo.StructType & {
    > stdgo.Error,
    @:interfacetypeffun
    function unwrap():stdgo.Error;
    @:interfacetypeffun
    function crashPath():stdgo.GoString;
};
