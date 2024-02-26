package stdgo.io.fs;
/**
    // Package fs defines basic interfaces to a file system.
    // A file system can be provided by the host operating system
    // but also by other packages.
**/
private var __go2hxdoc__package : Bool;
var errInvalid(get, set) : stdgo.Error;
function get_errInvalid():stdgo.Error return stdgo._internal.io.fs.Fs.errInvalid;
function set_errInvalid(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.errInvalid = v;
var errPermission(get, set) : stdgo.Error;
function get_errPermission():stdgo.Error return stdgo._internal.io.fs.Fs.errPermission;
function set_errPermission(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.errPermission = v;
var errExist(get, set) : stdgo.Error;
function get_errExist():stdgo.Error return stdgo._internal.io.fs.Fs.errExist;
function set_errExist(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.errExist = v;
var errNotExist(get, set) : stdgo.Error;
function get_errNotExist():stdgo.Error return stdgo._internal.io.fs.Fs.errNotExist;
function set_errNotExist(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.errNotExist = v;
var errClosed(get, set) : stdgo.Error;
function get_errClosed():stdgo.Error return stdgo._internal.io.fs.Fs.errClosed;
function set_errClosed(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.errClosed = v;
var skipDir(get, set) : stdgo.Error;
function get_skipDir():stdgo.Error return stdgo._internal.io.fs.Fs.skipDir;
function set_skipDir(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.skipDir = v;
var skipAll(get, set) : stdgo.Error;
function get_skipAll():stdgo.Error return stdgo._internal.io.fs.Fs.skipAll;
function set_skipAll(v:stdgo.Error):stdgo.Error return stdgo._internal.io.fs.Fs.skipAll = v;
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
typedef FS = stdgo._internal.io.fs.Fs.FS;
typedef File = stdgo._internal.io.fs.Fs.File;
typedef DirEntry = stdgo._internal.io.fs.Fs.DirEntry;
typedef ReadDirFile = stdgo._internal.io.fs.Fs.ReadDirFile;
typedef FileInfo = stdgo._internal.io.fs.Fs.FileInfo;
typedef GlobFS = stdgo._internal.io.fs.Fs.GlobFS;
typedef ReadDirFS = stdgo._internal.io.fs.Fs.ReadDirFS;
typedef ReadFileFS = stdgo._internal.io.fs.Fs.ReadFileFS;
typedef StatFS = stdgo._internal.io.fs.Fs.StatFS;
typedef SubFS = stdgo._internal.io.fs.Fs.SubFS;
typedef T__interface_0 = stdgo._internal.io.fs.Fs.T__interface_0;
@:invalid typedef PathError = Dynamic;
@:invalid typedef T_dirInfo = Dynamic;
@:invalid typedef T_subFS = Dynamic;
@:invalid typedef T_statDirEntry = Dynamic;
typedef FileMode = stdgo._internal.io.fs.Fs.FileMode;
typedef WalkDirFunc = stdgo._internal.io.fs.Fs.WalkDirFunc;
/**
    // FormatFileInfo returns a formatted version of info for human readability.
    // Implementations of FileInfo can call this from a String method.
    // The output for a file named "hello.go", 100 bytes, mode 0o644, created
    // January 1, 1970 at noon is
    //
    //	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
**/
inline function formatFileInfo(info:FileInfo):String throw "not implemented";
/**
    // FormatDirEntry returns a formatted version of dir for human readability.
    // Implementations of DirEntry can call this from a String method.
    // The outputs for a directory named subdir and a file named hello.go are:
    //
    //	d subdir/
    //	- hello.go
**/
inline function formatDirEntry(dir:DirEntry):String throw "not implemented";
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
inline function validPath(name:String):Bool throw "not implemented";
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
inline function glob(fsys:FS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> throw "not implemented";
/**
    // ReadDir reads the named directory
    // and returns a list of directory entries sorted by filename.
    //
    // If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
    // Otherwise ReadDir calls fs.Open and uses ReadDir and Close
    // on the returned file.
**/
inline function readDir(fsys:FS, name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> throw "not implemented";
/**
    // FileInfoToDirEntry returns a DirEntry that returns information from info.
    // If info is nil, FileInfoToDirEntry returns nil.
**/
inline function fileInfoToDirEntry(info:FileInfo):DirEntry throw "not implemented";
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
inline function readFile(fsys:FS, name:String):stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
/**
    // Stat returns a FileInfo describing the named file from the file system.
    //
    // If fs implements StatFS, Stat calls fs.Stat.
    // Otherwise, Stat opens the file to stat it.
**/
inline function stat(fsys:FS, name:String):stdgo.Tuple<FileInfo, stdgo.Error> throw "not implemented";
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
inline function sub(fsys:FS, dir:String):stdgo.Tuple<FS, stdgo.Error> throw "not implemented";
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
inline function walkDir(fsys:FS, root:String, fn:WalkDirFunc):stdgo.Error throw "not implemented";
@:invalid typedef PathError_asInterface = Dynamic;
@:invalid typedef PathError_static_extension = Dynamic;
@:invalid typedef T_dirInfo_asInterface = Dynamic;
@:invalid typedef T_dirInfo_static_extension = Dynamic;
@:invalid typedef T_subFS_asInterface = Dynamic;
@:invalid typedef T_subFS_static_extension = Dynamic;
@:invalid typedef T_statDirEntry_asInterface = Dynamic;
@:invalid typedef T_statDirEntry_static_extension = Dynamic;
@:invalid typedef FileMode_asInterface = Dynamic;
@:invalid typedef FileMode_static_extension = Dynamic;
