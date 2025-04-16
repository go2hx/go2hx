package stdgo._internal.io.fs;
@:interface typedef SubFS = stdgo.StructType & {
    /**
        * Sub returns an FS corresponding to the subtree rooted at dir.
        
        
    **/
    @:interfacetypeffun
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; };
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
