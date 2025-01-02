package stdgo._internal.archive.tar;
typedef T_fileReader = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.archive.tar.Tar_T_fileState.T_fileState,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeTo(_0:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
