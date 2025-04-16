package stdgo._internal.io.fs;
@:interface typedef FileInfo = stdgo.StructType & {
    /**
        
        
        * base name of the file
    **/
    @:interfacetypeffun
    public dynamic function name():stdgo.GoString;
    /**
        
        
        * length in bytes for regular files; system-dependent for others
    **/
    @:interfacetypeffun
    public dynamic function size():stdgo.GoInt64;
    /**
        
        
        * file mode bits
    **/
    @:interfacetypeffun
    public dynamic function mode():stdgo._internal.io.fs.Fs_filemode.FileMode;
    /**
        
        
        * modification time
    **/
    @:interfacetypeffun
    public dynamic function modTime():stdgo._internal.time.Time_time.Time;
    /**
        
        
        * abbreviation for Mode().IsDir()
    **/
    @:interfacetypeffun
    public dynamic function isDir():Bool;
    /**
        
        
        * underlying data source (can return nil)
    **/
    @:interfacetypeffun
    public dynamic function sys():stdgo.AnyInterface;
};
