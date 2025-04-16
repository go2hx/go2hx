package stdgo._internal.net.http;
@:interface typedef File = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readdir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    public dynamic function close():stdgo.Error;
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function seek(_0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
