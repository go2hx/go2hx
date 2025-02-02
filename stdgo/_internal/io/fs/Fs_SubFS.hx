package stdgo._internal.io.fs;
@:interface typedef SubFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FS.FS,
    /**
        Sub returns an FS corresponding to the subtree rooted at dir.
        
        
    **/
    @:interfacetypeffun
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; };
};
