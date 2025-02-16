package stdgo._internal.flag;
@:interface typedef Getter = stdgo.StructType & {
    > stdgo._internal.flag.Flag_value.Value,
    @:interfacetypeffun
    function get():stdgo.AnyInterface;
};
