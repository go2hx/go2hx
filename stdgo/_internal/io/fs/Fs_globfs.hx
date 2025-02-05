package stdgo._internal.io.fs;
@:interface typedef GlobFS = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fs.FS,
    /**
        * Glob returns the names of all files matching pattern,
        * providing an implementation of the top-level
        * Glob function.
        
        
    **/
    @:interfacetypeffun
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
};
