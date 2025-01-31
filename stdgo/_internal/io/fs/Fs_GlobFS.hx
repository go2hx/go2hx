package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:interface typedef GlobFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FS.FS,
    /**
        Glob returns the names of all files matching pattern,
        providing an implementation of the top-level
        Glob function.
        
        
    **/
    @:interfacetypeffun
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
};
