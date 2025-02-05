package stdgo._internal.io.fs;
@:interface typedef DirEntry = stdgo.StructType & {
    /**
        * Name returns the name of the file (or subdirectory) described by the entry.
        * This name is only the final element of the path (the base name), not the entire path.
        * For example, Name would return "hello.go" not "home/gopher/hello.go".
        
        
    **/
    @:interfacetypeffun
    public dynamic function name():stdgo.GoString;
    /**
        * IsDir reports whether the entry describes a directory.
        
        
    **/
    @:interfacetypeffun
    public dynamic function isDir():Bool;
    /**
        * Type returns the type bits for the entry.
        * The type bits are a subset of the usual FileMode bits, those returned by the FileMode.Type method.
        
        
    **/
    @:interfacetypeffun
    public dynamic function type():stdgo._internal.io.fs.Fs_filemode.FileMode;
    /**
        * Info returns the FileInfo for the file or subdirectory described by the entry.
        * The returned FileInfo may be from the time of the original directory read
        * or from the time of the call to Info. If the file has been removed or renamed
        * since the directory read, Info may return an error satisfying errors.Is(err, ErrNotExist).
        * If the entry denotes a symbolic link, Info reports the information about the link itself,
        * not the link's target.
        
        
    **/
    @:interfacetypeffun
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
};
