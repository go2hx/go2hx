package stdgo._internal.testing;
@:interface typedef T_fuzzCrashError = stdgo.StructType & {
    @:interfacetypeffun
    function unwrap():stdgo.Error;
    @:interfacetypeffun
    function crashPath():stdgo.GoString;
    function error():stdgo.GoString;
};
