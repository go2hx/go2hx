package stdgo.io.fs;
var modeDir : FileMode = 2147483648i32;
var modeAppend : FileMode = 1073741824i32;
var modeExclusive : FileMode = 536870912i32;
var modeTemporary : FileMode = 268435456i32;
var modeSymlink : FileMode = 134217728i32;
var modeDevice : FileMode = 67108864i32;
var modeNamedPipe : FileMode = 33554432i32;
var modeSocket : FileMode = 16777216i32;
var modeSetuid : FileMode = 8388608i32;
var modeSetgid : FileMode = 4194304i32;
var modeCharDevice : FileMode = 2097152i32;
var modeSticky : FileMode = 1048576i32;
var modeIrregular : FileMode = 524288i32;
var modeType : FileMode = 2401763328i32;
var modePerm : FileMode = 511i32;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.io.fs.Fs_errinvalid.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errinvalid.errInvalid = v;
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.io.fs.Fs_errpermission.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errpermission.errPermission = v;
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.io.fs.Fs_errexist.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errexist.errExist = v;
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.io.fs.Fs_errnotexist.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errnotexist.errNotExist = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.io.fs.Fs_errclosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errclosed.errClosed = v;
        return v;
    }
var skipDir(get, set) : stdgo.Error;
private function get_skipDir():stdgo.Error return stdgo._internal.io.fs.Fs_skipdir.skipDir;
private function set_skipDir(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_skipdir.skipDir = v;
        return v;
    }
var skipAll(get, set) : stdgo.Error;
private function get_skipAll():stdgo.Error return stdgo._internal.io.fs.Fs_skipall.skipAll;
private function set_skipAll(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_skipall.skipAll = v;
        return v;
    }
typedef FS = stdgo._internal.io.fs.Fs_fs.FS;
typedef File = stdgo._internal.io.fs.Fs_file.File;
typedef DirEntry = stdgo._internal.io.fs.Fs_direntry.DirEntry;
typedef ReadDirFile = stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile;
typedef FileInfo = stdgo._internal.io.fs.Fs_fileinfo.FileInfo;
typedef GlobFS = stdgo._internal.io.fs.Fs_globfs.GlobFS;
typedef ReadDirFS = stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS;
typedef ReadFileFS = stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS;
typedef StatFS = stdgo._internal.io.fs.Fs_statfs.StatFS;
typedef SubFS = stdgo._internal.io.fs.Fs_subfs.SubFS;
typedef PathError = stdgo._internal.io.fs.Fs_patherror.PathError;
typedef FileMode = stdgo._internal.io.fs.Fs_filemode.FileMode;
typedef WalkDirFunc = stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc;
typedef PathErrorPointer = stdgo._internal.io.fs.Fs_patherrorpointer.PathErrorPointer;
typedef FileModePointer = stdgo._internal.io.fs.Fs_filemodepointer.FileModePointer;
typedef WalkDirFuncPointer = stdgo._internal.io.fs.Fs_walkdirfuncpointer.WalkDirFuncPointer;
/**
    * Package fs defines basic interfaces to a file system.
    * A file system can be provided by the host operating system
    * but also by other packages.
**/
class Fs {
    /**
        * FormatFileInfo returns a formatted version of info for human readability.
        * Implementations of FileInfo can call this from a String method.
        * The output for a file named "hello.go", 100 bytes, mode 0o644, created
        * January 1, 1970 at noon is
        * 
        * 	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
    **/
    static public inline function formatFileInfo(_info:FileInfo):stdgo.GoString return stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(_info);
    /**
        * FormatDirEntry returns a formatted version of dir for human readability.
        * Implementations of DirEntry can call this from a String method.
        * The outputs for a directory named subdir and a file named hello.go are:
        * 
        * 	d subdir/
        * 	- hello.go
    **/
    static public inline function formatDirEntry(_dir:DirEntry):stdgo.GoString return stdgo._internal.io.fs.Fs_formatdirentry.formatDirEntry(_dir);
    /**
        * ValidPath reports whether the given path name
        * is valid for use in a call to Open.
        * 
        * Path names passed to open are UTF-8-encoded,
        * unrooted, slash-separated sequences of path elements, like “x/y/z”.
        * Path names must not contain an element that is “.” or “..” or the empty string,
        * except for the special case that the root directory is named “.”.
        * Paths must not start or end with a slash: “/x” and “x/” are invalid.
        * 
        * Note that paths are slash-separated on all systems, even Windows.
        * Paths containing other characters such as backslash and colon
        * are accepted as valid, but those characters must never be
        * interpreted by an FS implementation as path element separators.
    **/
    static public inline function validPath(_name:stdgo.GoString):Bool return stdgo._internal.io.fs.Fs_validpath.validPath(_name);
    /**
        * Glob returns the names of all files matching pattern or nil
        * if there is no matching file. The syntax of patterns is the same
        * as in path.Match. The pattern may describe hierarchical names such as
        * usr/bin/ed.
        * 
        * Glob ignores file system errors such as I/O errors reading directories.
        * The only possible returned error is path.ErrBadPattern, reporting that
        * the pattern is malformed.
        * 
        * If fs implements GlobFS, Glob calls fs.Glob.
        * Otherwise, Glob uses ReadDir to traverse the directory tree
        * and look for matches for the pattern.
    **/
    static public inline function glob(_fsys:FS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.io.fs.Fs_glob.glob(_fsys, _pattern);
    /**
        * ReadDir reads the named directory
        * and returns a list of directory entries sorted by filename.
        * 
        * If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
        * Otherwise ReadDir calls fs.Open and uses ReadDir and Close
        * on the returned file.
    **/
    static public inline function readDir(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return stdgo._internal.io.fs.Fs_readdir.readDir(_fsys, _name);
    /**
        * FileInfoToDirEntry returns a DirEntry that returns information from info.
        * If info is nil, FileInfoToDirEntry returns nil.
    **/
    static public inline function fileInfoToDirEntry(_info:FileInfo):stdgo._internal.io.fs.Fs_direntry.DirEntry return stdgo._internal.io.fs.Fs_fileinfotodirentry.fileInfoToDirEntry(_info);
    /**
        * ReadFile reads the named file from the file system fs and returns its contents.
        * A successful call returns a nil error, not io.EOF.
        * (Because ReadFile reads the whole file, the expected EOF
        * from the final Read is not treated as an error to be reported.)
        * 
        * If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
        * Otherwise ReadFile calls fs.Open and uses Read and Close
        * on the returned file.
    **/
    static public inline function readFile(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.io.fs.Fs_readfile.readFile(_fsys, _name);
    /**
        * Stat returns a FileInfo describing the named file from the file system.
        * 
        * If fs implements StatFS, Stat calls fs.Stat.
        * Otherwise, Stat opens the file to stat it.
    **/
    static public inline function stat(_fsys:FS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.io.fs.Fs_stat.stat(_fsys, _name);
    /**
        * Sub returns an FS corresponding to the subtree rooted at fsys's dir.
        * 
        * If dir is ".", Sub returns fsys unchanged.
        * Otherwise, if fs implements SubFS, Sub returns fsys.Sub(dir).
        * Otherwise, Sub returns a new FS implementation sub that,
        * in effect, implements sub.Open(name) as fsys.Open(path.Join(dir, name)).
        * The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.
        * 
        * Note that Sub(os.DirFS("/"), "prefix") is equivalent to os.DirFS("/prefix")
        * and that neither of them guarantees to avoid operating system
        * accesses outside "/prefix", because the implementation of os.DirFS
        * does not check for symbolic links inside "/prefix" that point to
        * other directories. That is, os.DirFS is not a general substitute for a
        * chroot-style security mechanism, and Sub does not change that fact.
    **/
    static public inline function sub(_fsys:FS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; } return stdgo._internal.io.fs.Fs_sub.sub(_fsys, _dir);
    /**
        * WalkDir walks the file tree rooted at root, calling fn for each file or
        * directory in the tree, including root.
        * 
        * All errors that arise visiting files and directories are filtered by fn:
        * see the fs.WalkDirFunc documentation for details.
        * 
        * The files are walked in lexical order, which makes the output deterministic
        * but requires WalkDir to read an entire directory into memory before proceeding
        * to walk that directory.
        * 
        * WalkDir does not follow symbolic links found in directories,
        * but if root itself is a symbolic link, its target will be walked.
    **/
    static public inline function walkDir(_fsys:FS, _root:stdgo.GoString, _fn:WalkDirFunc):stdgo.Error return stdgo._internal.io.fs.Fs_walkdir.walkDir(_fsys, _root, _fn);
}
