package stdgo.io.fs;
/**
    // Package fs defines basic interfaces to a file system.
    // A file system can be provided by the host operating system
    // but also by other packages.
**/
private var __go2hxdoc__package : Bool;
/**
    // Generic file system errors.
    // Errors returned by file systems can be tested against these errors
    // using errors.Is.
    
    // "invalid argument"
**/
var errInvalid : stdgo.Error = _errInvalid();
/**
    // Generic file system errors.
    // Errors returned by file systems can be tested against these errors
    // using errors.Is.
    
    // "permission denied"
**/
var errPermission : stdgo.Error = _errPermission();
/**
    // Generic file system errors.
    // Errors returned by file systems can be tested against these errors
    // using errors.Is.
    
    // "file already exists"
**/
var errExist : stdgo.Error = _errExist();
/**
    // Generic file system errors.
    // Errors returned by file systems can be tested against these errors
    // using errors.Is.
    
    // "file does not exist"
**/
var errNotExist : stdgo.Error = _errNotExist();
/**
    // Generic file system errors.
    // Errors returned by file systems can be tested against these errors
    // using errors.Is.
    
    // "file already closed"
**/
var errClosed : stdgo.Error = _errClosed();
/**
    // SkipDir is used as a return value from WalkDirFuncs to indicate that
    // the directory named in the call is to be skipped. It is not returned
    // as an error by any function.
    
    
**/
var skipDir : stdgo.Error = stdgo.errors.Errors.new_(("skip this directory" : stdgo.GoString)?.__copy__());
/**
    // SkipAll is used as a return value from WalkDirFuncs to indicate that
    // all remaining files and directories are to be skipped. It is not returned
    // as an error by any function.
    
    
**/
var skipAll : stdgo.Error = stdgo.errors.Errors.new_(("skip everything and stop the walk" : stdgo.GoString)?.__copy__());
/**
    // The single letters are the abbreviations
    // used by the String method's formatting.
    
    // d: is a directory
**/
final modeDir : stdgo.io.fs.Fs.FileMode = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // a: append-only
**/
final modeAppend = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // l: exclusive use
**/
final modeExclusive = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // T: temporary file; Plan 9 only
**/
final modeTemporary = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // L: symbolic link
**/
final modeSymlink = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // D: device file
**/
final modeDevice = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // p: named pipe (FIFO)
**/
final modeNamedPipe = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // S: Unix domain socket
**/
final modeSocket = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // u: setuid
**/
final modeSetuid = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // g: setgid
**/
final modeSetgid = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // c: Unix character device, when ModeDevice is set
**/
final modeCharDevice = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // t: sticky
**/
final modeSticky = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // ?: non-regular file; nothing else is known about this file
**/
final modeIrregular = (524288u32 : stdgo.io.fs.Fs.FileMode);
/**
    // Mask for the type bits. For regular files, none will be set.
    
    
**/
final modeType : stdgo.io.fs.Fs.FileMode = (-1893203968u32 : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // Unix permission bits
**/
final modePerm : stdgo.io.fs.Fs.FileMode = (511u32 : stdgo.io.fs.Fs.FileMode);
/**
    // An FS provides access to a hierarchical file system.
    //
    // The FS interface is the minimum implementation required of the file system.
    // A file system may implement additional interfaces,
    // such as ReadFileFS, to provide additional or optimized functionality.
    
    
**/
typedef FS = stdgo.StdGoTypes.StructType & {
    /**
        // Open opens the named file.
        //
        // When Open returns an error, it should be of type *PathError
        // with the Op field set to "open", the Path field set to name,
        // and the Err field describing the problem.
        //
        // Open should reject attempts to open names that do not satisfy
        // ValidPath(name), returning a *PathError with Err set to
        // ErrInvalid or ErrNotExist.
        
        
    **/
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; };
};
/**
    // A File provides access to a single file.
    // The File interface is the minimum implementation required of the file.
    // Directory files should also implement ReadDirFile.
    // A file may implement io.ReaderAt or io.Seeker as optimizations.
    
    
**/
typedef File = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function stat():{ var _0 : FileInfo; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function read(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function close():stdgo.Error;
};
/**
    // A DirEntry is an entry read from a directory
    // (using the ReadDir function or a ReadDirFile's ReadDir method).
    
    
**/
typedef DirEntry = stdgo.StdGoTypes.StructType & {
    /**
        // Name returns the name of the file (or subdirectory) described by the entry.
        // This name is only the final element of the path (the base name), not the entire path.
        // For example, Name would return "hello.go" not "home/gopher/hello.go".
        
        
    **/
    public dynamic function name():stdgo.GoString;
    /**
        // IsDir reports whether the entry describes a directory.
        
        
    **/
    public dynamic function isDir():Bool;
    /**
        // Type returns the type bits for the entry.
        // The type bits are a subset of the usual FileMode bits, those returned by the FileMode.Type method.
        
        
    **/
    public dynamic function type():FileMode;
    /**
        // Info returns the FileInfo for the file or subdirectory described by the entry.
        // The returned FileInfo may be from the time of the original directory read
        // or from the time of the call to Info. If the file has been removed or renamed
        // since the directory read, Info may return an error satisfying errors.Is(err, ErrNotExist).
        // If the entry denotes a symbolic link, Info reports the information about the link itself,
        // not the link's target.
        
        
    **/
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; };
};
/**
    // A ReadDirFile is a directory file whose entries can be read with the ReadDir method.
    // Every directory file should implement this interface.
    // (It is permissible for any file to implement this interface,
    // but if so ReadDir should return an error for non-directories.)
    
    
**/
typedef ReadDirFile = stdgo.StdGoTypes.StructType & {
    > File,
    /**
        // ReadDir reads the contents of the directory and returns
        // a slice of up to n DirEntry values in directory order.
        // Subsequent calls on the same file will yield further DirEntry values.
        //
        // If n > 0, ReadDir returns at most n DirEntry structures.
        // In this case, if ReadDir returns an empty slice, it will return
        // a non-nil error explaining why.
        // At the end of a directory, the error is io.EOF.
        // (ReadDir must return io.EOF itself, not an error wrapping io.EOF.)
        //
        // If n <= 0, ReadDir returns all the DirEntry values from the directory
        // in a single slice. In this case, if ReadDir succeeds (reads all the way
        // to the end of the directory), it returns the slice and a nil error.
        // If it encounters an error before the end of the directory,
        // ReadDir returns the DirEntry list read until that point and a non-nil error.
        
        
    **/
    public dynamic function readDir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; };
};
/**
    // A FileInfo describes a file and is returned by Stat.
    
    
**/
typedef FileInfo = stdgo.StdGoTypes.StructType & {
    /**
        
        
        // base name of the file
    **/
    public dynamic function name():stdgo.GoString;
    /**
        
        
        // length in bytes for regular files; system-dependent for others
    **/
    public dynamic function size():stdgo.StdGoTypes.GoInt64;
    /**
        
        
        // file mode bits
    **/
    public dynamic function mode():FileMode;
    /**
        
        
        // modification time
    **/
    public dynamic function modTime():stdgo.time.Time.Time;
    /**
        
        
        // abbreviation for Mode().IsDir()
    **/
    public dynamic function isDir():Bool;
    /**
        
        
        // underlying data source (can return nil)
    **/
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface;
};
/**
    // A GlobFS is a file system with a Glob method.
    
    
**/
typedef GlobFS = stdgo.StdGoTypes.StructType & {
    > FS,
    /**
        // Glob returns the names of all files matching pattern,
        // providing an implementation of the top-level
        // Glob function.
        
        
    **/
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
};
/**
    // ReadDirFS is the interface implemented by a file system
    // that provides an optimized implementation of ReadDir.
    
    
**/
typedef ReadDirFS = stdgo.StdGoTypes.StructType & {
    > FS,
    /**
        // ReadDir reads the named directory
        // and returns a list of directory entries sorted by filename.
        
        
    **/
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; };
};
/**
    // ReadFileFS is the interface implemented by a file system
    // that provides an optimized implementation of ReadFile.
    
    
**/
typedef ReadFileFS = stdgo.StdGoTypes.StructType & {
    > FS,
    /**
        // ReadFile reads the named file and returns its contents.
        // A successful call returns a nil error, not io.EOF.
        // (Because ReadFile reads the whole file, the expected EOF
        // from the final Read is not treated as an error to be reported.)
        //
        // The caller is permitted to modify the returned byte slice.
        // This method should return a copy of the underlying data.
        
        
    **/
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; };
};
/**
    // A StatFS is a file system with a Stat method.
    
    
**/
typedef StatFS = stdgo.StdGoTypes.StructType & {
    > FS,
    /**
        // Stat returns a FileInfo describing the file.
        // If there is an error, it should be of type *PathError.
        
        
    **/
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; };
};
/**
    // A SubFS is a file system with a Sub method.
    
    
**/
typedef SubFS = stdgo.StdGoTypes.StructType & {
    > FS,
    /**
        // Sub returns an FS corresponding to the subtree rooted at dir.
        
        
    **/
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; };
};
/**
    
    
    
**/
typedef T__interface_0 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function timeout():Bool;
};
/**
    // PathError records an error and the operation and file path that caused it.
    
    
**/
@:structInit @:using(stdgo.io.fs.Fs.PathError_static_extension) class PathError {
    public var op : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?path:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (path != null) this.path = path;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PathError(op, path, err);
    }
}
/**
    // dirInfo is a DirEntry based on a FileInfo.
    
    
**/
@:structInit @:private @:using(stdgo.io.fs.Fs.T_dirInfo_static_extension) class T_dirInfo {
    public var _fileInfo : stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
    public function new(?_fileInfo:stdgo.io.fs.Fs.FileInfo) {
        if (_fileInfo != null) this._fileInfo = _fileInfo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_fileInfo);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs.Fs.T_subFS_static_extension) class T_subFS {
    public var _fsys : stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
    public var _dir : stdgo.GoString = "";
    public function new(?_fsys:stdgo.io.fs.Fs.FS, ?_dir:stdgo.GoString) {
        if (_fsys != null) this._fsys = _fsys;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subFS(_fsys, _dir);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
/**
    // A FileMode represents a file's mode and permission bits.
    // The bits have the same definition on all systems, so that
    // information about files can be moved from one system
    // to another portably. Not all bits apply to all systems.
    // The only required bit is ModeDir for directories.
**/
@:named @:using(stdgo.io.fs.Fs.FileMode_static_extension) typedef FileMode = stdgo.StdGoTypes.GoUInt32;
/**
    // WalkDirFunc is the type of the function called by WalkDir to visit
    // each file or directory.
    //
    // The path argument contains the argument to WalkDir as a prefix.
    // That is, if WalkDir is called with root argument "dir" and finds a file
    // named "a" in that directory, the walk function will be called with
    // argument "dir/a".
    //
    // The d argument is the fs.DirEntry for the named path.
    //
    // The error result returned by the function controls how WalkDir
    // continues. If the function returns the special value SkipDir, WalkDir
    // skips the current directory (path if d.IsDir() is true, otherwise
    // path's parent directory). If the function returns the special value
    // SkipAll, WalkDir skips all remaining files and directories. Otherwise,
    // if the function returns a non-nil error, WalkDir stops entirely and
    // returns that error.
    //
    // The err argument reports an error related to path, signaling that
    // WalkDir will not walk into that directory. The function can decide how
    // to handle that error; as described earlier, returning the error will
    // cause WalkDir to stop walking the entire tree.
    //
    // WalkDir calls the function with a non-nil err argument in two cases.
    //
    // First, if the initial fs.Stat on the root directory fails, WalkDir
    // calls the function with path set to root, d set to nil, and err set to
    // the error from fs.Stat.
    //
    // Second, if a directory's ReadDir method fails, WalkDir calls the
    // function with path set to the directory's path, d set to an
    // fs.DirEntry describing the directory, and err set to the error from
    // ReadDir. In this second case, the function is called twice with the
    // path of the directory: the first call is before the directory read is
    // attempted and has err set to nil, giving the function a chance to
    // return SkipDir or SkipAll and avoid the ReadDir entirely. The second call
    // is after a failed ReadDir and reports the error from ReadDir.
    // (If ReadDir succeeds, there is no second call.)
    //
    // The differences between WalkDirFunc compared to filepath.WalkFunc are:
    //
    //   - The second argument has type fs.DirEntry instead of fs.FileInfo.
    //   - The function is called before reading a directory, to allow SkipDir
    //     or SkipAll to bypass the directory read entirely or skip all remaining
    //     files and directories respectively.
    //   - If a directory read fails, the function is called a second time
    //     for that directory to report the error.
**/
@:named typedef WalkDirFunc = (stdgo.GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error;
/**
    // FormatFileInfo returns a formatted version of info for human readability.
    // Implementations of FileInfo can call this from a String method.
    // The output for a file named "hello.go", 100 bytes, mode 0o644, created
    // January 1, 1970 at noon is
    //
    //	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
**/
function formatFileInfo(_info:FileInfo):stdgo.GoString {
        var _name:stdgo.GoString = _info.name()?.__copy__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (40 : stdgo.StdGoTypes.GoInt) + (_name.length)).__setNumber32__();
        _b = (_b.__append__(...(_info.mode().string() : stdgo.GoString).__toArray__()));
        _b = (_b.__append__((32 : stdgo.StdGoTypes.GoUInt8)));
        var _size:stdgo.StdGoTypes.GoInt64 = _info.size();
        var _usize:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        if (_size >= (0i64 : stdgo.StdGoTypes.GoInt64)) {
            _usize = (_size : stdgo.StdGoTypes.GoUInt64);
        } else {
            _b = (_b.__append__((45 : stdgo.StdGoTypes.GoUInt8)));
            _usize = (-_size : stdgo.StdGoTypes.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 20) (0 : stdgo.StdGoTypes.GoUInt8)]);
        var _i:stdgo.StdGoTypes.GoInt = (19 : stdgo.StdGoTypes.GoInt);
        while (_usize >= (10i64 : stdgo.StdGoTypes.GoUInt64)) {
            var _q:stdgo.StdGoTypes.GoUInt64 = _usize / (10i64 : stdgo.StdGoTypes.GoUInt64);
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (((48i64 : stdgo.StdGoTypes.GoUInt64) + _usize) - (_q * (10i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.StdGoTypes.GoByte);
            _i--;
            _usize = _q;
        };
        _buf[(_i : stdgo.StdGoTypes.GoInt)] = ((48i64 : stdgo.StdGoTypes.GoUInt64) + _usize : stdgo.StdGoTypes.GoByte);
        _b = (_b.__append__(...(_buf.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
        _b = (_b.__append__((32 : stdgo.StdGoTypes.GoUInt8)));
        _b = (_b.__append__(..._info.modTime().format(("2006-01-02 15:04:05" : stdgo.GoString)?.__copy__()).__toArray__()));
        _b = (_b.__append__((32 : stdgo.StdGoTypes.GoUInt8)));
        _b = (_b.__append__(..._name.__toArray__()));
        if (_info.isDir()) {
            _b = (_b.__append__((47 : stdgo.StdGoTypes.GoUInt8)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
/**
    // FormatDirEntry returns a formatted version of dir for human readability.
    // Implementations of DirEntry can call this from a String method.
    // The outputs for a directory named subdir and a file named hello.go are:
    //
    //	d subdir/
    //	- hello.go
**/
function formatDirEntry(_dir:DirEntry):stdgo.GoString {
        var _name:stdgo.GoString = _dir.name()?.__copy__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (5 : stdgo.StdGoTypes.GoInt) + (_name.length)).__setNumber32__();
        var _mode:stdgo.GoString = (_dir.type().string() : stdgo.GoString)?.__copy__();
        _mode = (_mode.__slice__(0, (_mode.length) - (9 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        _b = (_b.__append__(..._mode.__toArray__()));
        _b = (_b.__append__((32 : stdgo.StdGoTypes.GoUInt8)));
        _b = (_b.__append__(..._name.__toArray__()));
        if (_dir.isDir()) {
            _b = (_b.__append__((47 : stdgo.StdGoTypes.GoUInt8)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
/**
    // ValidPath reports whether the given path name
    // is valid for use in a call to Open.
    //
    // Path names passed to open are UTF-8-encoded,
    // unrooted, slash-separated sequences of path elements, like “x/y/z”.
    // Path names must not contain an element that is “.” or “..” or the empty string,
    // except for the special case that the root directory is named “.”.
    // Paths must not start or end with a slash: “/x” and “x/” are invalid.
    //
    // Note that paths are slash-separated on all systems, even Windows.
    // Paths containing other characters such as backslash and colon
    // are accepted as valid, but those characters must never be
    // interpreted by an FS implementation as path element separators.
**/
function validPath(_name:stdgo.GoString):Bool {
        if (!stdgo.unicode.utf8.Utf8.validString(_name?.__copy__())) {
            return false;
        };
        if (_name == (("." : stdgo.GoString))) {
            return true;
        };
        while (true) {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while ((_i < _name.length) && (_name[(_i : stdgo.StdGoTypes.GoInt)] != (47 : stdgo.StdGoTypes.GoUInt8))) {
                _i++;
            };
            var _elem:stdgo.GoString = (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            if (((_elem == stdgo.Go.str()) || (_elem == ("." : stdgo.GoString))) || (_elem == (".." : stdgo.GoString))) {
                return false;
            };
            if (_i == ((_name.length))) {
                return true;
            };
            _name = (_name.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
function _errInvalid():stdgo.Error {
        return stdgo.internal.oserror.Oserror.errInvalid;
    }
function _errPermission():stdgo.Error {
        return stdgo.internal.oserror.Oserror.errPermission;
    }
function _errExist():stdgo.Error {
        return stdgo.internal.oserror.Oserror.errExist;
    }
function _errNotExist():stdgo.Error {
        return stdgo.internal.oserror.Oserror.errNotExist;
    }
function _errClosed():stdgo.Error {
        return stdgo.internal.oserror.Oserror.errClosed;
    }
/**
    // Glob returns the names of all files matching pattern or nil
    // if there is no matching file. The syntax of patterns is the same
    // as in path.Match. The pattern may describe hierarchical names such as
    // usr/|*|/bin/ed.
    //
    // Glob ignores file system errors such as I/O errors reading directories.
    // The only possible returned error is path.ErrBadPattern, reporting that
    // the pattern is malformed.
    //
    // If fs implements GlobFS, Glob calls fs.Glob.
    // Otherwise, Glob uses ReadDir to traverse the directory tree
    // and look for matches for the pattern.
**/
function glob(_fsys:FS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _err:stdgo.Error = (null : stdgo.Error);
        return _globWithLimit(_fsys, _pattern?.__copy__(), (0 : stdgo.StdGoTypes.GoInt));
    }
function _globWithLimit(_fsys:FS, _pattern:stdgo.GoString, _depth:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _err:stdgo.Error = (null : stdgo.Error);
        {};
        if (_depth > (10000 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.path.Path.errBadPattern };
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : GlobFS)) : GlobFS), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.fs.Fs.GlobFS), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.glob(_pattern?.__copy__());
            };
        };
        {
            var __tmp__ = stdgo.path.Path.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (!_hasMeta(_pattern?.__copy__())) {
            {
                {
                    var __tmp__ = stat(_fsys, _pattern?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, _pattern?.__copy__()) : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo.path.Path.split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        _dir = _cleanGlobPath(_dir?.__copy__())?.__copy__();
        if (!_hasMeta(_dir?.__copy__())) {
            return _glob(_fsys, _dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
        };
        if (_dir == (_pattern)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.path.Path.errBadPattern };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = _globWithLimit(_fsys, _dir?.__copy__(), _depth + (1 : stdgo.StdGoTypes.GoInt));
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        for (__1 => _d in _m) {
            {
                var __tmp__ = _glob(_fsys, _d?.__copy__(), _file?.__copy__(), _matches);
                _matches = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }
/**
    // cleanGlobPath prepares path for glob matching.
**/
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _path;
            if (__value__ == (stdgo.Go.str())) {
                return ("." : stdgo.GoString)?.__copy__();
            } else {
                return (_path.__slice__((0 : stdgo.StdGoTypes.GoInt), (_path.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
/**
    // glob searches for files matching pattern in the directory dir
    // and appends them to matches, returning the updated slice.
    // If the directory cannot be opened, glob returns the existing matches.
    // New matches are added in lexicographical order.
**/
function _glob(_fs:FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _e:stdgo.Error = (null : stdgo.Error);
        _m = _matches;
        var __tmp__ = readDir(_fs, _dir?.__copy__()), _infos:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _m, _1 : _e };
        };
        for (__0 => _info in _infos) {
            var _n:stdgo.GoString = _info.name()?.__copy__();
            var __tmp__ = stdgo.path.Path.match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _err };
            };
            if (_matched) {
                _m = (_m.__append__(stdgo.path.Path.join(_dir?.__copy__(), _n?.__copy__())?.__copy__()));
            };
        };
        return { _0 : _m, _1 : _e };
    }
/**
    // hasMeta reports whether path contains any of the magic characters
    // recognized by path.Match.
**/
function _hasMeta(_path:stdgo.GoString):Bool {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_path.length), _i++, {
                {
                    final __value__ = _path[(_i : stdgo.StdGoTypes.GoInt)];
                    if (__value__ == ((42 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((63 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((91 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((92 : stdgo.StdGoTypes.GoUInt8))) {
                        return true;
                    };
                };
            });
        };
        return false;
    }
/**
    // ReadDir reads the named directory
    // and returns a list of directory entries sorted by filename.
    //
    // If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
    // Otherwise ReadDir calls fs.Open and uses ReadDir and Close
    // on the returned file.
**/
function readDir(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : ReadDirFS)) : ReadDirFS), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.fs.Fs.ReadDirFS), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.readDir(_name?.__copy__());
            };
        };
        var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : ReadDirFile)) : ReadDirFile), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.fs.Fs.ReadDirFile), ok : false };
            }, _dir = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("readdir" : stdgo.GoString)?.__copy__(), path : _name?.__copy__(), err : stdgo.errors.Errors.new_(("not implemented" : stdgo.GoString)?.__copy__()) } : stdgo.io.fs.Fs.PathError)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>)) };
                };
            };
            var __tmp__ = _dir.readDir((-1 : stdgo.StdGoTypes.GoInt)), _list:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo.sort.Sort.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
                return _list[(_i : stdgo.StdGoTypes.GoInt)].name() < _list[(_j : stdgo.StdGoTypes.GoInt)].name();
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _list, _1 : _err };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : (null : stdgo.Error) };
        };
    }
/**
    // FileInfoToDirEntry returns a DirEntry that returns information from info.
    // If info is nil, FileInfoToDirEntry returns nil.
**/
function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        if (_info == null) {
            return (null : stdgo.io.fs.Fs.DirEntry);
        };
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo.io.fs.Fs.T_dirInfo));
    }
/**
    // ReadFile reads the named file from the file system fs and returns its contents.
    // A successful call returns a nil error, not io.EOF.
    // (Because ReadFile reads the whole file, the expected EOF
    // from the final Read is not treated as an error to be reported.)
    //
    // If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
    // Otherwise ReadFile calls fs.Open and uses Read and Close
    // on the returned file.
**/
function readFile(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : ReadFileFS)) : ReadFileFS), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.fs.Fs.ReadFileFS), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.readFile(_name?.__copy__());
            };
        };
        var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            var _size:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            {
                var __tmp__ = _file.stat(), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var _size64:stdgo.StdGoTypes.GoInt64 = _info.size();
                    if (((_size64 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt64) == (_size64)) {
                        _size = (_size64 : stdgo.StdGoTypes.GoInt);
                    };
                };
            };
            var _data = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), _size + (1 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
            while (true) {
                if ((_data.length) >= _data.capacity) {
                    var _d = ((_data.__slice__(0, _data.capacity) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__append__((0 : stdgo.StdGoTypes.GoUInt8)));
                    _data = (_d.__slice__(0, (_data.length)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                };
                var __tmp__ = _file.read((_data.__slice__((_data.length), _data.capacity) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _data = (_data.__slice__(0, (_data.length) + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _err = (null : stdgo.Error);
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _data, _1 : _err };
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
        };
    }
/**
    // Stat returns a FileInfo describing the named file from the file system.
    //
    // If fs implements StatFS, Stat calls fs.Stat.
    // Otherwise, Stat opens the file to stat it.
**/
function stat(_fsys:FS, _name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : StatFS)) : StatFS), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.fs.Fs.StatFS), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.stat(_name?.__copy__());
            };
        };
        var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : (null : stdgo.io.fs.Fs.FileInfo), _1 : _err };
            };
            __deferstack__.unshift(() -> _file.close());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _file.stat();
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.io.fs.Fs.FileInfo), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.io.fs.Fs.FileInfo), _1 : (null : stdgo.Error) };
        };
    }
/**
    // Sub returns an FS corresponding to the subtree rooted at fsys's dir.
    //
    // If dir is ".", Sub returns fsys unchanged.
    // Otherwise, if fs implements SubFS, Sub returns fsys.Sub(dir).
    // Otherwise, Sub returns a new FS implementation sub that,
    // in effect, implements sub.Open(name) as fsys.Open(path.Join(dir, name)).
    // The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.
    //
    // Note that Sub(os.DirFS("/"), "prefix") is equivalent to os.DirFS("/prefix")
    // and that neither of them guarantees to avoid operating system
    // accesses outside "/prefix", because the implementation of os.DirFS
    // does not check for symbolic links inside "/prefix" that point to
    // other directories. That is, os.DirFS is not a general substitute for a
    // chroot-style security mechanism, and Sub does not change that fact.
**/
function sub(_fsys:FS, _dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } {
        if (!validPath(_dir?.__copy__())) {
            return { _0 : (null : stdgo.io.fs.Fs.FS), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("sub" : stdgo.GoString)?.__copy__(), path : _dir?.__copy__(), err : stdgo.errors.Errors.new_(("invalid name" : stdgo.GoString)?.__copy__()) } : stdgo.io.fs.Fs.PathError)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>)) };
        };
        if (_dir == (("." : stdgo.GoString))) {
            return { _0 : _fsys, _1 : (null : stdgo.Error) };
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : SubFS)) : SubFS), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.fs.Fs.SubFS), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _fsys.sub(_dir?.__copy__());
            };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.fs.Fs.T_subFS(_fsys, _dir?.__copy__()) : stdgo.io.fs.Fs.T_subFS)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.T_subFS>)), _1 : (null : stdgo.Error) };
    }
/**
    // walkDir recursively descends path, calling walkDirFn.
**/
function _walkDir(_fsys:FS, _name:stdgo.GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):stdgo.Error {
        {
            var _err:stdgo.Error = _walkDirFn(_name?.__copy__(), _d, (null : stdgo.Error));
            if ((_err != null) || !_d.isDir()) {
                if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        var __tmp__ = readDir(_fsys, _name?.__copy__()), _dirs:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _walkDirFn(_name?.__copy__(), _d, _err);
            if (_err != null) {
                if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) && _d.isDir()) {
                    _err = (null : stdgo.Error);
                };
                return _err;
            };
        };
        for (__0 => _d1 in _dirs) {
            var _name1:stdgo.GoString = stdgo.path.Path.join(_name?.__copy__(), _d1.name()?.__copy__())?.__copy__();
            {
                var _err:stdgo.Error = _walkDir(_fsys, _name1?.__copy__(), _d1, _walkDirFn);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(skipDir))) {
                        break;
                    };
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
/**
    // WalkDir walks the file tree rooted at root, calling fn for each file or
    // directory in the tree, including root.
    //
    // All errors that arise visiting files and directories are filtered by fn:
    // see the fs.WalkDirFunc documentation for details.
    //
    // The files are walked in lexical order, which makes the output deterministic
    // but requires WalkDir to read an entire directory into memory before proceeding
    // to walk that directory.
    //
    // WalkDir does not follow symbolic links found in directories,
    // but if root itself is a symbolic link, its target will be walked.
**/
function walkDir(_fsys:FS, _root:stdgo.GoString, _fn:WalkDirFunc):stdgo.Error {
        var __tmp__ = stat(_fsys, _root?.__copy__()), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo.io.fs.Fs.DirEntry), _err);
        } else {
            _err = _walkDir(_fsys, _root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.fs.Fs.T_statDirEntry(_info) : stdgo.io.fs.Fs.T_statDirEntry)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.T_statDirEntry>)), _fn);
        };
        if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipDir)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(skipAll))) {
            return (null : stdgo.Error);
        };
        return _err;
    }
class PathError_asInterface {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PathError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs.Fs.PathError_asInterface) class PathError_static_extension {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    static public function timeout( _e:stdgo.StdGoTypes.Ref<PathError>):Bool {
        @:recv var _e:stdgo.StdGoTypes.Ref<PathError> = _e;
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e.err) : T__interface_0)) : T__interface_0), ok : true };
        } catch(_) {
            { value : (null : stdgo.io.fs.Fs.T__interface_0), ok : false };
        }, _t = __tmp__.value, _ok = __tmp__.ok;
        return _ok && _t.timeout();
    }
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<PathError>):stdgo.Error {
        @:recv var _e:stdgo.StdGoTypes.Ref<PathError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<PathError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<PathError> = _e;
        return _e.op + (" " : stdgo.GoString)?.__copy__() + _e.path?.__copy__() + (": " : stdgo.GoString)?.__copy__() + _e.err.error()?.__copy__()?.__copy__();
    }
}
class T_dirInfo_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dirInfo>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs.Fs.T_dirInfo_asInterface) class T_dirInfo_static_extension {
    @:keep
    static public function string( _di:T_dirInfo):stdgo.GoString {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return formatDirEntry(stdgo.Go.asInterface(_di))?.__copy__();
    }
    @:keep
    static public function name( _di:T_dirInfo):stdgo.GoString {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return _di._fileInfo.name()?.__copy__();
    }
    @:keep
    static public function info( _di:T_dirInfo):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return { _0 : _di._fileInfo, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _di:T_dirInfo):FileMode {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return _di._fileInfo.mode().type();
    }
    @:keep
    static public function isDir( _di:T_dirInfo):Bool {
        @:recv var _di:T_dirInfo = _di?.__copy__();
        return _di._fileInfo.isDir();
    }
}
class T_subFS_asInterface {
    @:keep
    public dynamic function sub(_dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } return __self__.value.sub(_dir);
    @:keep
    public dynamic function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_pattern);
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    /**
        // fixErr shortens any reported names in PathErrors by stripping f.dir.
    **/
    @:keep
    public dynamic function _fixErr(_err:stdgo.Error):stdgo.Error return __self__.value._fixErr(_err);
    /**
        // shorten maps name, which should start with f.dir, back to the suffix after f.dir.
    **/
    @:keep
    public dynamic function _shorten(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value._shorten(_name);
    /**
        // fullName maps name to the fully-qualified name dir/name.
    **/
    @:keep
    public dynamic function _fullName(_op:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._fullName(_op, _name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_subFS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs.Fs.T_subFS_asInterface) class T_subFS_static_extension {
    @:keep
    static public function sub( _f:stdgo.StdGoTypes.Ref<T_subFS>, _dir:stdgo.GoString):{ var _0 : FS; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        if (_dir == (("." : stdgo.GoString))) {
            return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _f._fullName(("sub" : stdgo.GoString)?.__copy__(), _dir?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.io.fs.Fs.FS), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.fs.Fs.T_subFS(_f._fsys, _full?.__copy__()) : stdgo.io.fs.Fs.T_subFS)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.T_subFS>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function glob( _f:stdgo.StdGoTypes.Ref<T_subFS>, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        {
            var __tmp__ = stdgo.path.Path.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (_pattern == (("." : stdgo.GoString))) {
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ("." : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _full:stdgo.GoString = _f._dir + ("/" : stdgo.GoString)?.__copy__() + _pattern?.__copy__()?.__copy__();
        var __tmp__ = stdgo.io.fs.Fs.glob(_f._fsys, _full?.__copy__()), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        for (_i => _name in _list) {
            var __tmp__ = _f._shorten(_name?.__copy__()), _name:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.errors.Errors.new_(("invalid result from inner fsys Glob: " : stdgo.GoString) + _name?.__copy__() + (" not in " : stdgo.GoString)?.__copy__() + _f._dir?.__copy__()?.__copy__()) };
            };
            _list[(_i : stdgo.StdGoTypes.GoInt)] = _name?.__copy__();
        };
        return { _0 : _list, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function readFile( _f:stdgo.StdGoTypes.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        var __tmp__ = _f._fullName(("read" : stdgo.GoString)?.__copy__(), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo.io.fs.Fs.readFile(_f._fsys, _full?.__copy__()), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _data, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function readDir( _f:stdgo.StdGoTypes.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        var __tmp__ = _f._fullName(("read" : stdgo.GoString)?.__copy__(), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>), _1 : _err };
        };
        var __tmp__ = stdgo.io.fs.Fs.readDir(_f._fsys, _full?.__copy__()), _dir:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dir, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function open( _f:stdgo.StdGoTypes.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        var __tmp__ = _f._fullName(("open" : stdgo.GoString)?.__copy__(), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.io.fs.Fs.File), _1 : _err };
        };
        var __tmp__ = _f._fsys.open(_full?.__copy__()), _file:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _file, _1 : _f._fixErr(_err) };
    }
    /**
        // fixErr shortens any reported names in PathErrors by stripping f.dir.
    **/
    @:keep
    static public function _fixErr( _f:stdgo.StdGoTypes.Ref<T_subFS>, _err:stdgo.Error):stdgo.Error {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<PathError>)) : stdgo.StdGoTypes.Ref<PathError>), ok : true };
            } catch(_) {
                { value : (null : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>), ok : false };
            }, _e = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _f._shorten(_e.path?.__copy__()), _short:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _e.path = _short?.__copy__();
                    };
                };
            };
        };
        return _err;
    }
    /**
        // shorten maps name, which should start with f.dir, back to the suffix after f.dir.
    **/
    @:keep
    static public function _shorten( _f:stdgo.StdGoTypes.Ref<T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        var _rel:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if (_name == (_f._dir)) {
            return { _0 : ("." : stdgo.GoString)?.__copy__(), _1 : true };
        };
        if (((_name.length >= (_f._dir.length + (2 : stdgo.StdGoTypes.GoInt))) && (_name[(_f._dir.length : stdgo.StdGoTypes.GoInt)] == (47 : stdgo.StdGoTypes.GoUInt8))) && ((_name.__slice__(0, (_f._dir.length)) : stdgo.GoString) == _f._dir)) {
            return { _0 : (_name.__slice__((_f._dir.length) + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _1 : true };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
    }
    /**
        // fullName maps name to the fully-qualified name dir/name.
    **/
    @:keep
    static public function _fullName( _f:stdgo.StdGoTypes.Ref<T_subFS>, _op:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_subFS> = _f;
        if (!validPath(_name?.__copy__())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : _op?.__copy__(), path : _name?.__copy__(), err : stdgo.errors.Errors.new_(("invalid name" : stdgo.GoString)?.__copy__()) } : stdgo.io.fs.Fs.PathError)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>)) };
        };
        return { _0 : stdgo.path.Path.join(_f._dir?.__copy__(), _name?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statDirEntry>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs.Fs.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    static public function info( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):FileMode {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):Bool {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_statDirEntry> = _d;
        return _d._info.name()?.__copy__();
    }
}
class FileMode_asInterface {
    /**
        // Type returns type bits in m (m & ModeType).
    **/
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    /**
        // Perm returns the Unix permission bits in m (m & ModePerm).
    **/
    @:keep
    public dynamic function perm():FileMode return __self__.value.perm();
    /**
        // IsRegular reports whether m describes a regular file.
        // That is, it tests that no mode type bits are set.
    **/
    @:keep
    public dynamic function isRegular():Bool return __self__.value.isRegular();
    /**
        // IsDir reports whether m describes a directory.
        // That is, it tests for the ModeDir bit being set in m.
    **/
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FileMode>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs.Fs.FileMode_asInterface) class FileMode_static_extension {
    /**
        // Type returns type bits in m (m & ModeType).
    **/
    @:keep
    static public function type( _m:FileMode):FileMode {
        @:recv var _m:FileMode = _m;
        return _m & (-1893203968u32 : stdgo.io.fs.Fs.FileMode);
    }
    /**
        // Perm returns the Unix permission bits in m (m & ModePerm).
    **/
    @:keep
    static public function perm( _m:FileMode):FileMode {
        @:recv var _m:FileMode = _m;
        return _m & (511u32 : stdgo.io.fs.Fs.FileMode);
    }
    /**
        // IsRegular reports whether m describes a regular file.
        // That is, it tests that no mode type bits are set.
    **/
    @:keep
    static public function isRegular( _m:FileMode):Bool {
        @:recv var _m:FileMode = _m;
        return _m & (-1893203968u32 : stdgo.io.fs.Fs.FileMode) == ((0u32 : stdgo.io.fs.Fs.FileMode));
    }
    /**
        // IsDir reports whether m describes a directory.
        // That is, it tests for the ModeDir bit being set in m.
    **/
    @:keep
    static public function isDir( _m:FileMode):Bool {
        @:recv var _m:FileMode = _m;
        return _m & (-2147483648u32 : stdgo.io.fs.Fs.FileMode) != ((0u32 : stdgo.io.fs.Fs.FileMode));
    }
    @:keep
    static public function string( _m:FileMode):stdgo.GoString {
        @:recv var _m:FileMode = _m;
        {};
        var _buf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 32) (0 : stdgo.StdGoTypes.GoUInt8)]);
        var _w:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (_i => _c in ("dalTLDpSugct?" : stdgo.GoString)) {
            if (_m & ((1u32 : stdgo.io.fs.Fs.FileMode) << ((31 : stdgo.StdGoTypes.GoInt) - _i : stdgo.StdGoTypes.GoUInt)) != ((0u32 : stdgo.io.fs.Fs.FileMode))) {
                _buf[(_w : stdgo.StdGoTypes.GoInt)] = (_c : stdgo.StdGoTypes.GoByte);
                _w++;
            };
        };
        if (_w == ((0 : stdgo.StdGoTypes.GoInt))) {
            _buf[(_w : stdgo.StdGoTypes.GoInt)] = (45 : stdgo.StdGoTypes.GoUInt8);
            _w++;
        };
        {};
        for (_i => _c in ("rwxrwxrwx" : stdgo.GoString)) {
            if (_m & ((1u32 : stdgo.io.fs.Fs.FileMode) << ((8 : stdgo.StdGoTypes.GoInt) - _i : stdgo.StdGoTypes.GoUInt)) != ((0u32 : stdgo.io.fs.Fs.FileMode))) {
                _buf[(_w : stdgo.StdGoTypes.GoInt)] = (_c : stdgo.StdGoTypes.GoByte);
            } else {
                _buf[(_w : stdgo.StdGoTypes.GoInt)] = (45 : stdgo.StdGoTypes.GoUInt8);
            };
            _w++;
        };
        return ((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
