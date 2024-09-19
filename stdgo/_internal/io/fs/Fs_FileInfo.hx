package stdgo._internal.io.fs;
typedef FileInfo = stdgo.StructType & {
    /**
        
        
        base name of the file
    **/
    public dynamic function name():stdgo.GoString;
    /**
        
        
        length in bytes for regular files; system-dependent for others
    **/
    public dynamic function size():stdgo.GoInt64;
    /**
        
        
        file mode bits
    **/
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode;
    /**
        
        
        modification time
    **/
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time;
    /**
        
        
        abbreviation for Mode().IsDir()
    **/
    public dynamic function isDir():Bool;
    /**
        
        
        underlying data source (can return nil)
    **/
    public dynamic function sys():stdgo.AnyInterface;
};
