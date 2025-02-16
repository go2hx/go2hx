package stdgo._internal.fmt;
@:interface typedef Formatter = stdgo.StructType & {
    @:interfacetypeffun
    function format(_f:stdgo._internal.fmt.Fmt_state.State, _verb:stdgo.GoInt32):Void;
};
