package stdgo._internal.strings;
@:interface typedef T_replacer = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeString(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
