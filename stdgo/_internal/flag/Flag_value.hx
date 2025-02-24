package stdgo._internal.flag;
@:interface typedef Value = stdgo.StructType & {
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function set(_0:stdgo.GoString):stdgo.Error;
};
