package stdgo._internal.archive.tar;
@:interface typedef T_fileReader = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeTo(_0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function _logicalRemaining():stdgo.GoInt64;
    public dynamic function _physicalRemaining():stdgo.GoInt64;
};
