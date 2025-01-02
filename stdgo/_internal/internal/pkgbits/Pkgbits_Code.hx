package stdgo._internal.internal.pkgbits;
typedef Code = stdgo.StructType & {
    /**
        Marker returns the SyncMarker for the Code's dynamic type.
        
        
    **/
    @:interfacetypeffun
    public dynamic function marker():stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker;
    /**
        Value returns the Code's ordinal value.
        
        
    **/
    @:interfacetypeffun
    public dynamic function value():stdgo.GoInt;
};
