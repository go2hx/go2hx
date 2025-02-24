package stdgo._internal.flag;
@:interface typedef Getter = stdgo.StructType & {
    @:interfacetypeffun
    function get():stdgo.AnyInterface;
    function set(_0:stdgo.GoString):stdgo.Error;
    function string():stdgo.GoString;
};
