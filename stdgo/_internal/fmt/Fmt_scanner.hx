package stdgo._internal.fmt;
@:interface typedef Scanner = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scan(_state:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error;
};
