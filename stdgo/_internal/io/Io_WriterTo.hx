package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef WriterTo = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeTo(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
