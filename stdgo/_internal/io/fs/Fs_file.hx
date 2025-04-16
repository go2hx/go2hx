package stdgo._internal.io.fs;
@:interface typedef File = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
};
