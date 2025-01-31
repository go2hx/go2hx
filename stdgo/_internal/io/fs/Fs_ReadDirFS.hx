package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:interface typedef ReadDirFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FS.FS,
    /**
        ReadDir reads the named directory
        and returns a list of directory entries sorted by filename.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; };
};
