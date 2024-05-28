package stdgo.io.fs;
final modeDir : FileMode = stdgo._internal.io.fs.Fs.modeDir;
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
final modeType : FileMode = stdgo._internal.io.fs.Fs.modeType;
final modePerm : FileMode = stdgo._internal.io.fs.Fs.modePerm;
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
    static public function open(t:FS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.FS_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FS = stdgo._internal.io.fs.Fs.FS;
class File_static_extension {
    static public function close(t:File):stdgo.Error {
        return stdgo._internal.io.fs.Fs.File_static_extension.close(t);
    }
    static public function read(t:File, _0:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.io.fs.Fs.File_static_extension.read(t, _0);
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
    static public function readDir(t:ReadDirFile, _n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.ReadDirFile_static_extension.readDir(t, _n);
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
    static public function glob(t:GlobFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.GlobFS_static_extension.glob(t, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef GlobFS = stdgo._internal.io.fs.Fs.GlobFS;
class ReadDirFS_static_extension {
    static public function readDir(t:ReadDirFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.ReadDirFS_static_extension.readDir(t, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ReadDirFS = stdgo._internal.io.fs.Fs.ReadDirFS;
class ReadFileFS_static_extension {
    static public function readFile(t:ReadFileFS, _name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.ReadFileFS_static_extension.readFile(t, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ReadFileFS = stdgo._internal.io.fs.Fs.ReadFileFS;
class StatFS_static_extension {
    static public function stat(t:StatFS, _name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.StatFS_static_extension.stat(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef StatFS = stdgo._internal.io.fs.Fs.StatFS;
class SubFS_static_extension {
    static public function sub(t:SubFS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.SubFS_static_extension.sub(t, _dir);
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
    public var _fileInfo(get, set) : FileInfo;
    function get__fileInfo():FileInfo return this._fileInfo;
    function set__fileInfo(v:FileInfo):FileInfo {
        this._fileInfo = v;
        return v;
    }
    public function new(?_fileInfo:FileInfo) this = new stdgo._internal.io.fs.Fs.T_dirInfo(_fileInfo);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.io.fs.Fs.T_subFS_static_extension) abstract T_subFS(stdgo._internal.io.fs.Fs.T_subFS) from stdgo._internal.io.fs.Fs.T_subFS to stdgo._internal.io.fs.Fs.T_subFS {
    public var _fsys(get, set) : FS;
    function get__fsys():FS return this._fsys;
    function set__fsys(v:FS):FS {
        this._fsys = v;
        return v;
    }
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = v;
        return v;
    }
    public function new(?_fsys:FS, ?_dir:String) this = new stdgo._internal.io.fs.Fs.T_subFS(_fsys, _dir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) abstract T_statDirEntry(stdgo._internal.io.fs.Fs.T_statDirEntry) from stdgo._internal.io.fs.Fs.T_statDirEntry to stdgo._internal.io.fs.Fs.T_statDirEntry {
    public var _info(get, set) : FileInfo;
    function get__info():FileInfo return this._info;
    function set__info(v:FileInfo):FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_info:FileInfo) this = new stdgo._internal.io.fs.Fs.T_statDirEntry(_info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FileMode = stdgo._internal.io.fs.Fs.FileMode;
typedef WalkDirFunc = stdgo._internal.io.fs.Fs.WalkDirFunc;
class PathError_static_extension {
    static public function timeout(_e:PathError):Bool {
        return stdgo._internal.io.fs.Fs.PathError_static_extension.timeout(_e);
    }
    static public function unwrap(_e:PathError):stdgo.Error {
        return stdgo._internal.io.fs.Fs.PathError_static_extension.unwrap(_e);
    }
    static public function error(_e:PathError):String {
        return stdgo._internal.io.fs.Fs.PathError_static_extension.error(_e);
    }
}
class T_dirInfo_static_extension {
    static public function string(_di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.string(_di);
    }
    static public function name(_di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.name(_di);
    }
    static public function info(_di:T_dirInfo):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.info(_di);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_di:T_dirInfo):FileMode {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.type(_di);
    }
    static public function isDir(_di:T_dirInfo):Bool {
        return stdgo._internal.io.fs.Fs.T_dirInfo_static_extension.isDir(_di);
    }
}
class T_subFS_static_extension {
    static public function sub(_f:T_subFS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.sub(_f, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(_f:T_subFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.glob(_f, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(_f:T_subFS, _name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.readFile(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:T_subFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.readDir(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_f:T_subFS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixErr(_f:T_subFS, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.io.fs.Fs.T_subFS_static_extension._fixErr(_f, _err);
    }
    static public function _shorten(_f:T_subFS, _name:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension._shorten(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fullName(_f:T_subFS, _op:String, _name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_subFS_static_extension._fullName(_f, _op, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_statDirEntry_static_extension {
    static public function string(_d:T_statDirEntry):String {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.string(_d);
    }
    static public function info(_d:T_statDirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.info(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:T_statDirEntry):FileMode {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.type(_d);
    }
    static public function isDir(_d:T_statDirEntry):Bool {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.isDir(_d);
    }
    static public function name(_d:T_statDirEntry):String {
        return stdgo._internal.io.fs.Fs.T_statDirEntry_static_extension.name(_d);
    }
}
class FileMode_static_extension {
    static public function type(_m:FileMode):FileMode {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.type(_m);
    }
    static public function perm(_m:FileMode):FileMode {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.perm(_m);
    }
    static public function isRegular(_m:FileMode):Bool {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.isRegular(_m);
    }
    static public function isDir(_m:FileMode):Bool {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.isDir(_m);
    }
    static public function string(_m:FileMode):String {
        return stdgo._internal.io.fs.Fs.FileMode_static_extension.string(_m);
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
    static public function formatFileInfo(_info:FileInfo):String {
        return stdgo._internal.io.fs.Fs.formatFileInfo(_info);
    }
    /**
        FormatDirEntry returns a formatted version of dir for human readability.
        Implementations of DirEntry can call this from a String method.
        The outputs for a directory named subdir and a file named hello.go are:
        
        	d subdir/
        	- hello.go
    **/
    static public function formatDirEntry(_dir:DirEntry):String {
        return stdgo._internal.io.fs.Fs.formatDirEntry(_dir);
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
    static public function validPath(_name:String):Bool {
        return stdgo._internal.io.fs.Fs.validPath(_name);
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
    static public function glob(_fsys:FS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.glob(_fsys, _pattern);
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
    static public function readDir(_fsys:FS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.readDir(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        FileInfoToDirEntry returns a DirEntry that returns information from info.
        If info is nil, FileInfoToDirEntry returns nil.
    **/
    static public function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        return stdgo._internal.io.fs.Fs.fileInfoToDirEntry(_info);
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
    static public function readFile(_fsys:FS, _name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.readFile(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Stat returns a FileInfo describing the named file from the file system.
        
        If fs implements StatFS, Stat calls fs.Stat.
        Otherwise, Stat opens the file to stat it.
    **/
    static public function stat(_fsys:FS, _name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.stat(_fsys, _name);
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
    static public function sub(_fsys:FS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs.sub(_fsys, _dir);
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
    static public function walkDir(_fsys:FS, _root:String, _fn:WalkDirFunc):stdgo.Error {
        return stdgo._internal.io.fs.Fs.walkDir(_fsys, _root, _fn);
    }
}
