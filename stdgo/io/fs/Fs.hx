package stdgo.io.fs;
final modeDir : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.io.fs.Fs.modeDir;
final modeAppend = stdgo._internal.io.fs.Fs.modeAppend;
final modeExclusive = stdgo._internal.io.fs.Fs.modeExclusive;
final modeTemporary = stdgo._internal.io.fs.Fs.modeTemporary;
final modeSymlink = stdgo._internal.io.fs.Fs.modeSymlink;
final modeDevice = stdgo._internal.io.fs.Fs.modeDevice;
final modeNamedPipe = stdgo._internal.io.fs.Fs.modeNamedPipe;
final modeSocket = stdgo._internal.io.fs.Fs.modeSocket;
final modeSetuid = stdgo._internal.io.fs.Fs.modeSetuid;
final modeSetgid = stdgo._internal.io.fs.Fs.modeSetgid;
final modeCharDevice = stdgo._internal.io.fs.Fs.modeCharDevice;
final modeSticky = stdgo._internal.io.fs.Fs.modeSticky;
final modeIrregular = stdgo._internal.io.fs.Fs.modeIrregular;
final modeType : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.io.fs.Fs.modeType;
final modePerm : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.io.fs.Fs.modePerm;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.io.fs.Fs.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.errInvalid = v;
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.io.fs.Fs.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.errPermission = v;
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.io.fs.Fs.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.errExist = v;
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.io.fs.Fs.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.errNotExist = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.io.fs.Fs.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.errClosed = v;
        return v;
    }
var skipDir(get, set) : stdgo.Error;
private function get_skipDir():stdgo.Error return stdgo._internal.io.fs.Fs.skipDir;
private function set_skipDir(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.skipDir = v;
        return v;
    }
var skipAll(get, set) : stdgo.Error;
private function get_skipAll():stdgo.Error return stdgo._internal.io.fs.Fs.skipAll;
private function set_skipAll(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs.skipAll = v;
        return v;
    }
class FS_static_extension {
    static public function open(t:FS, name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.FS_static_extension.open(t, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FS = stdgo._internal.io.fs.Fs.FS;
class File_static_extension {
    static public function close(t:File):stdgo.Error {
        return stdgo._internal.io.fs.Fs.File_static_extension.close(t);
    }
    static public function read(t:File, 0:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final 0 = ([for (i in 0) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.io.fs.Fs.File_static_extension.read(t, 0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(t:File):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.File_static_extension.stat(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef File = stdgo._internal.io.fs.Fs.File;
class DirEntry_static_extension {
    static public function info(t:DirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.DirEntry_static_extension.info(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(t:DirEntry):FileMode {
        return stdgo._internal.io.fs.Fs.DirEntry_static_extension.type(t);
    }
    static public function isDir(t:DirEntry):Bool {
        return stdgo._internal.io.fs.Fs.DirEntry_static_extension.isDir(t);
    }
    static public function name(t:DirEntry):String {
        return stdgo._internal.io.fs.Fs.DirEntry_static_extension.name(t);
    }
}
typedef DirEntry = stdgo._internal.io.fs.Fs.DirEntry;
class ReadDirFile_static_extension {
    static public function readDir(t:ReadDirFile, n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.ReadDirFile_static_extension.readDir(t, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ReadDirFile = stdgo._internal.io.fs.Fs.ReadDirFile;
class FileInfo_static_extension {
    static public function sys(t:FileInfo):stdgo.AnyInterface {
        return stdgo._internal.io.fs.Fs.FileInfo_static_extension.sys(t);
    }
    static public function isDir(t:FileInfo):Bool {
        return stdgo._internal.io.fs.Fs.FileInfo_static_extension.isDir(t);
    }
    static public function modTime(t:FileInfo):stdgo._internal.time.Time.Time {
        return stdgo._internal.io.fs.Fs.FileInfo_static_extension.modTime(t);
    }
    static public function mode(t:FileInfo):FileMode {
        return stdgo._internal.io.fs.Fs.FileInfo_static_extension.mode(t);
    }
    static public function size(t:FileInfo):haxe.Int64 {
        return stdgo._internal.io.fs.Fs.FileInfo_static_extension.size(t);
    }
    static public function name(t:FileInfo):String {
        return stdgo._internal.io.fs.Fs.FileInfo_static_extension.name(t);
    }
}
typedef FileInfo = stdgo._internal.io.fs.Fs.FileInfo;
class GlobFS_static_extension {
    static public function glob(t:GlobFS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.GlobFS_static_extension.glob(t, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef GlobFS = stdgo._internal.io.fs.Fs.GlobFS;
class ReadDirFS_static_extension {
    static public function readDir(t:ReadDirFS, name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.ReadDirFS_static_extension.readDir(t, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ReadDirFS = stdgo._internal.io.fs.Fs.ReadDirFS;
class ReadFileFS_static_extension {
    static public function readFile(t:ReadFileFS, name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.ReadFileFS_static_extension.readFile(t, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ReadFileFS = stdgo._internal.io.fs.Fs.ReadFileFS;
class StatFS_static_extension {
    static public function stat(t:StatFS, name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.StatFS_static_extension.stat(t, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef StatFS = stdgo._internal.io.fs.Fs.StatFS;
class SubFS_static_extension {
    static public function sub(t:SubFS, dir:String):stdgo.Tuple<FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.SubFS_static_extension.sub(t, dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SubFS = stdgo._internal.io.fs.Fs.SubFS;
class T__interface_0_static_extension {
    static public function timeout(t:T__interface_0):Bool {
        return stdgo._internal.io.fs.Fs.T__interface_0_static_extension.timeout(t);
    }
}
typedef T__interface_0 = stdgo._internal.io.fs.Fs.T__interface_0;
@:structInit @:using(stdgo.io.fs.Fs.PathError_static_extension) abstract PathError(stdgo._internal.io.fs.Fs.PathError) from stdgo._internal.io.fs.Fs.PathError to stdgo._internal.io.fs.Fs.PathError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?op:String, ?path:String, ?err:stdgo.Error) this = new stdgo._internal.io.fs.Fs.PathError(op, path, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.io.fs.Fs.T_dirInfo_static_extension) abstract T_dirInfo(stdgo._internal.io.fs.Fs.T_dirInfo) from stdgo._internal.io.fs.Fs.T_dirInfo to stdgo._internal.io.fs.Fs.T_dirInfo {
    public var _fileInfo(get, set) : stdgo._internal.io.fs.Fs.FileInfo;
    function get__fileInfo():stdgo._internal.io.fs.Fs.FileInfo return this._fileInfo;
    function set__fileInfo(v:stdgo._internal.io.fs.Fs.FileInfo):stdgo._internal.io.fs.Fs.FileInfo {
        this._fileInfo = v;
        return v;
    }
    public function new(?_fileInfo:stdgo._internal.io.fs.Fs.FileInfo) this = new stdgo._internal.io.fs.Fs.T_dirInfo(_fileInfo);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.io.fs.Fs.T_subFS_static_extension) abstract T_subFS(stdgo._internal.io.fs.Fs.T_subFS) from stdgo._internal.io.fs.Fs.T_subFS to stdgo._internal.io.fs.Fs.T_subFS {
    public var _fsys(get, set) : stdgo._internal.io.fs.Fs.FS;
    function get__fsys():stdgo._internal.io.fs.Fs.FS return this._fsys;
    function set__fsys(v:stdgo._internal.io.fs.Fs.FS):stdgo._internal.io.fs.Fs.FS {
        this._fsys = v;
        return v;
    }
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = v;
        return v;
    }
    public function new(?_fsys:stdgo._internal.io.fs.Fs.FS, ?_dir:String) this = new stdgo._internal.io.fs.Fs.T_subFS(_fsys, _dir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) abstract T_statDirEntry(stdgo._internal.io.fs.Fs.T_statDirEntry) from stdgo._internal.io.fs.Fs.T_statDirEntry to stdgo._internal.io.fs.Fs.T_statDirEntry {
    public var _info(get, set) : stdgo._internal.io.fs.Fs.FileInfo;
    function get__info():stdgo._internal.io.fs.Fs.FileInfo return this._info;
    function set__info(v:stdgo._internal.io.fs.Fs.FileInfo):stdgo._internal.io.fs.Fs.FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_info:stdgo._internal.io.fs.Fs.FileInfo) this = new stdgo._internal.io.fs.Fs.T_statDirEntry(_info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FileMode = stdgo._internal.io.fs.Fs.FileMode;
typedef WalkDirFunc = stdgo._internal.io.fs.Fs.WalkDirFunc;
class PathError_static_extension {
    static public function timeout(e:PathError):Bool {
        return stdgo._internal.io.fs.Fs.PathError_static_extension.timeout(e);
    }
    static public function unwrap(e:PathError):stdgo.Error {
        return stdgo._internal.io.fs.Fs.PathError_static_extension.unwrap(e);
    }
    static public function error(e:PathError):String {
        return stdgo._internal.io.fs.Fs.PathError_static_extension.error(e);
    }
}
class T_dirInfo_static_extension {
    static public function string(di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.string(di);
    }
    static public function name(di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.name(di);
    }
    static public function info(di:T_dirInfo):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.info(di);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(di:T_dirInfo):FileMode {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.type(di);
    }
    static public function isDir(di:T_dirInfo):Bool {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.isDir(di);
    }
}
class T_subFS_static_extension {
    static public function sub(f:T_subFS, dir:String):stdgo.Tuple<FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.sub(f, dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(f:T_subFS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.glob(f, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(f:T_subFS, name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.readFile(f, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(f:T_subFS, name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.readDir(f, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(f:T_subFS, name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.open(f, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixErr(f:T_subFS, err:stdgo.Error):stdgo.Error {
        return stdgo._internal.io.fs.Fs.T_subFS_static_extension._fixErr(f, err);
    }
    static public function _shorten(f:T_subFS, name:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension._shorten(f, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fullName(f:T_subFS, op:String, name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension._fullName(f, op, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_statDirEntry_static_extension {
    static public function string(d:T_statDirEntry):String {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.string(d);
    }
    static public function info(d:T_statDirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.info(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(d:T_statDirEntry):FileMode {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.type(d);
    }
    static public function isDir(d:T_statDirEntry):Bool {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.isDir(d);
    }
    static public function name(d:T_statDirEntry):String {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.name(d);
    }
}
class FileMode_static_extension {
    static public function type(m:FileMode):FileMode {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.type(m);
    }
    static public function perm(m:FileMode):FileMode {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.perm(m);
    }
    static public function isRegular(m:FileMode):Bool {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.isRegular(m);
    }
    static public function isDir(m:FileMode):Bool {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.isDir(m);
    }
    static public function string(m:FileMode):String {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.string(m);
    }
}
/**
    Package fs defines basic interfaces to a file system.
    A file system can be provided by the host operating system
    but also by other packages.
**/
class Fs {
    /**
        FormatFileInfo returns a formatted version of info for human readability.
        Implementations of FileInfo can call this from a String method.
        The output for a file named "hello.go", 100 bytes, mode 0o644, created
        January 1, 1970 at noon is
        
        	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
    **/
    static public function formatFileInfo(info:FileInfo):String {
        return stdgo._internal.io.fs.Fs.formatFileInfo(info);
    }
    /**
        FormatDirEntry returns a formatted version of dir for human readability.
        Implementations of DirEntry can call this from a String method.
        The outputs for a directory named subdir and a file named hello.go are:
        
        	d subdir/
        	- hello.go
    **/
    static public function formatDirEntry(dir:DirEntry):String {
        return stdgo._internal.io.fs.Fs.formatDirEntry(dir);
    }
    /**
        ValidPath reports whether the given path name
        is valid for use in a call to Open.
        
        Path names passed to open are UTF-8-encoded,
        unrooted, slash-separated sequences of path elements, like “x/y/z”.
        Path names must not contain an element that is “.” or “..” or the empty string,
        except for the special case that the root directory is named “.”.
        Paths must not start or end with a slash: “/x” and “x/” are invalid.
        
        Note that paths are slash-separated on all systems, even Windows.
        Paths containing other characters such as backslash and colon
        are accepted as valid, but those characters must never be
        interpreted by an FS implementation as path element separators.
    **/
    static public function validPath(name:String):Bool {
        return stdgo._internal.io.fs.Fs.validPath(name);
    }
    /**
        Glob returns the names of all files matching pattern or nil
        if there is no matching file. The syntax of patterns is the same
        as in path.Match. The pattern may describe hierarchical names such as
        usr/|*|/bin/ed.
        
        Glob ignores file system errors such as I/O errors reading directories.
        The only possible returned error is path.ErrBadPattern, reporting that
        the pattern is malformed.
        
        If fs implements GlobFS, Glob calls fs.Glob.
        Otherwise, Glob uses ReadDir to traverse the directory tree
        and look for matches for the pattern.
    **/
    static public function glob(fsys:FS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.glob(fsys, pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ReadDir reads the named directory
        and returns a list of directory entries sorted by filename.
        
        If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
        Otherwise ReadDir calls fs.Open and uses ReadDir and Close
        on the returned file.
    **/
    static public function readDir(fsys:FS, name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.readDir(fsys, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        FileInfoToDirEntry returns a DirEntry that returns information from info.
        If info is nil, FileInfoToDirEntry returns nil.
    **/
    static public function fileInfoToDirEntry(info:FileInfo):DirEntry {
        return stdgo._internal.io.fs.Fs.fileInfoToDirEntry(info);
    }
    /**
        ReadFile reads the named file from the file system fs and returns its contents.
        A successful call returns a nil error, not io.EOF.
        (Because ReadFile reads the whole file, the expected EOF
        from the final Read is not treated as an error to be reported.)
        
        If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
        Otherwise ReadFile calls fs.Open and uses Read and Close
        on the returned file.
    **/
    static public function readFile(fsys:FS, name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.readFile(fsys, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Stat returns a FileInfo describing the named file from the file system.
        
        If fs implements StatFS, Stat calls fs.Stat.
        Otherwise, Stat opens the file to stat it.
    **/
    static public function stat(fsys:FS, name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.stat(fsys, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub returns an FS corresponding to the subtree rooted at fsys's dir.
        
        If dir is ".", Sub returns fsys unchanged.
        Otherwise, if fs implements SubFS, Sub returns fsys.Sub(dir).
        Otherwise, Sub returns a new FS implementation sub that,
        in effect, implements sub.Open(name) as fsys.Open(path.Join(dir, name)).
        The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.
        
        Note that Sub(os.DirFS("/"), "prefix") is equivalent to os.DirFS("/prefix")
        and that neither of them guarantees to avoid operating system
        accesses outside "/prefix", because the implementation of os.DirFS
        does not check for symbolic links inside "/prefix" that point to
        other directories. That is, os.DirFS is not a general substitute for a
        chroot-style security mechanism, and Sub does not change that fact.
    **/
    static public function sub(fsys:FS, dir:String):stdgo.Tuple<FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.sub(fsys, dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        WalkDir walks the file tree rooted at root, calling fn for each file or
        directory in the tree, including root.
        
        All errors that arise visiting files and directories are filtered by fn:
        see the fs.WalkDirFunc documentation for details.
        
        The files are walked in lexical order, which makes the output deterministic
        but requires WalkDir to read an entire directory into memory before proceeding
        to walk that directory.
        
        WalkDir does not follow symbolic links found in directories,
        but if root itself is a symbolic link, its target will be walked.
    **/
    static public function walkDir(fsys:FS, root:String, fn:WalkDirFunc):stdgo.Error {
        return stdgo._internal.io.fs.Fs.walkDir(fsys, root, fn);
    }
}
