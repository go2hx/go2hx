package stdgo._internal.archive.tar;
@:interface typedef T_fileWriter = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function _logicalRemaining():stdgo.GoInt64;
    public dynamic function _physicalRemaining():stdgo.GoInt64;
};
