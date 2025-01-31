package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef ReaderFrom = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
