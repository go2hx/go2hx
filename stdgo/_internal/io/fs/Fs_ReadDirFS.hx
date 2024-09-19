package stdgo._internal.io.fs;
typedef ReadDirFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FS.FS,
    /**
        ReadDir reads the named directory
        and returns a list of directory entries sorted by filename.
        
        
    **/
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; };
};
