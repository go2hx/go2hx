package stdgo._internal.database.sql;
typedef T_decimalCompose = stdgo.StructType & {
    /**
        Compose sets the internal decimal value from parts. If the value cannot be
        represented then an error should be returned.
        
        
    **/
    public dynamic function compose(_form:stdgo.GoUInt8, _negative:Bool, _coefficient:stdgo.Slice<stdgo.GoUInt8>, _exponent:stdgo.GoInt32):stdgo.Error;
};