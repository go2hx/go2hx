package stdgo._internal.io.fs;
@:interface typedef ReadFileFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    /**
        * ReadFile reads the named file and returns its contents.
        * A successful call returns a nil error, not io.EOF.
        * (Because ReadFile reads the whole file, the expected EOF
        * from the final Read is not treated as an error to be reported.)
        * 
        * The caller is permitted to modify the returned byte slice.
        * This method should return a copy of the underlying data.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
