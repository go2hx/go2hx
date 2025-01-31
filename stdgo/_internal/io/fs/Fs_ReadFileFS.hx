package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:interface typedef ReadFileFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FS.FS,
    /**
        ReadFile reads the named file and returns its contents.
        A successful call returns a nil error, not io.EOF.
        (Because ReadFile reads the whole file, the expected EOF
        from the final Read is not treated as an error to be reported.)
        
        The caller is permitted to modify the returned byte slice.
        This method should return a copy of the underlying data.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
