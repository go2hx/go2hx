package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef RuneScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_RuneReader.RuneReader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unreadRune():stdgo.Error;
};
