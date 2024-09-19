package stdgo._internal.internal.pkgbits;
typedef Code = stdgo.StructType & {
    /**
        Marker returns the SyncMarker for the Code's dynamic type.
        
        
    **/
    public dynamic function marker():stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker;
    /**
        Value returns the Code's ordinal value.
        
        
    **/
    public dynamic function value():stdgo.GoInt;
};
