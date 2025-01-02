package stdgo._internal.net.http;
typedef File = stdgo.StructType & {
    > stdgo._internal.io.Io_Closer.Closer,
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Seeker.Seeker,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readdir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; };
};
