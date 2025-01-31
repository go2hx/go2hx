package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:interface typedef SubFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FS.FS,
    /**
        Sub returns an FS corresponding to the subtree rooted at dir.
        
        
    **/
    @:interfacetypeffun
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; };
};
