package stdgo.path.filepath;
var separator : stdgo.GoInt32 = 47i64;
var listSeparator : stdgo.GoInt32 = 58i64;
var errBadPattern(get, set) : stdgo.Error;
private function get_errBadPattern():stdgo.Error return stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
private function set_errBadPattern(v:stdgo.Error):stdgo.Error {
        stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern = v;
        return v;
    }
var skipDir(get, set) : stdgo.Error;
private function get_skipDir():stdgo.Error return stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
private function set_skipDir(v:stdgo.Error):stdgo.Error {
        stdgo._internal.path.filepath.Filepath_skipdir.skipDir = v;
        return v;
    }
var skipAll(get, set) : stdgo.Error;
private function get_skipAll():stdgo.Error return stdgo._internal.path.filepath.Filepath_skipall.skipAll;
private function set_skipAll(v:stdgo.Error):stdgo.Error {
        stdgo._internal.path.filepath.Filepath_skipall.skipAll = v;
        return v;
    }
var lstatP(get, set) : stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }>;
private function get_lstatP():stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }> return stdgo._internal.path.filepath.Filepath_lstatp.lstatP;
private function set_lstatP(v:stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }>):stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }> {
        stdgo._internal.path.filepath.Filepath_lstatp.lstatP = v;
        return v;
    }
typedef WalkFunc = stdgo._internal.path.filepath.Filepath_walkfunc.WalkFunc;
typedef WalkFuncPointer = stdgo._internal.path.filepath.Filepath_walkfuncpointer.WalkFuncPointer;
/**
    * Package filepath implements utility routines for manipulating filename paths
    * in a way compatible with the target operating system-defined file paths.
    * 
    * The filepath package uses either forward slashes or backslashes,
    * depending on the operating system. To process paths such as URLs
    * that always use forward slashes regardless of the operating
    * system, see the [path] package.
**/
class Filepath {
    /**
        * Match reports whether name matches the shell file name pattern.
        * The pattern syntax is:
        * 
        * 	pattern:
        * 		{ term }
        * 	term:
        * 		'*'         matches any sequence of non-Separator characters
        * 		'?'         matches any single non-Separator character
        * 		'[' [ '^' ] { character-range } ']'
        * 		            character class (must be non-empty)
        * 		c           matches character c (c != '*', '?', '\\', '[')
        * 		'\\' c      matches character c
        * 
        * 	character-range:
        * 		c           matches character c (c != '\\', '-', ']')
        * 		'\\' c      matches character c
        * 		lo '-' hi   matches character c for lo <= c <= hi
        * 
        * Match requires pattern to match all of name, not just a substring.
        * The only possible returned error is ErrBadPattern, when pattern
        * is malformed.
        * 
        * On Windows, escaping is disabled. Instead, '\\' is treated as
        * path separator.
    **/
    static public inline function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath_match.match(_pattern, _name);
    /**
        * Glob returns the names of all files matching pattern or nil
        * if there is no matching file. The syntax of patterns is the same
        * as in Match. The pattern may describe hierarchical names such as
        * /usr/bin/ed (assuming the Separator is '/').
        * 
        * Glob ignores file system errors such as I/O errors reading directories.
        * The only possible returned error is ErrBadPattern, when pattern
        * is malformed.
    **/
    static public inline function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath_glob.glob(_pattern);
    /**
        * Clean returns the shortest path name equivalent to path
        * by purely lexical processing. It applies the following rules
        * iteratively until no further processing can be done:
        * 
        *  1. Replace multiple Separator elements with a single one.
        *  2. Eliminate each . path name element (the current directory).
        *  3. Eliminate each inner .. path name element (the parent directory)
        *     along with the non-.. element that precedes it.
        *  4. Eliminate .. elements that begin a rooted path:
        *     that is, replace "/.." by "/" at the beginning of a path,
        *     assuming Separator is '/'.
        * 
        * The returned path ends in a slash only if it represents a root directory,
        * such as "/" on Unix or `C:\` on Windows.
        * 
        * Finally, any occurrences of slash are replaced by Separator.
        * 
        * If the result of this process is an empty string, Clean
        * returns the string ".".
        * 
        * On Windows, Clean does not modify the volume name other than to replace
        * occurrences of "/" with `\`.
        * For example, Clean("//host/share/../x") returns `\\host\share\x`.
        * 
        * See also Rob Pike, “Lexical File Names in Plan 9 or
        * Getting Dot-Dot Right,”
        * https://9p.io/sys/doc/lexnames.html
    **/
    static public inline function clean(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_clean.clean(_path);
    /**
        * IsLocal reports whether path, using lexical analysis only, has all of these properties:
        * 
        *   - is within the subtree rooted at the directory in which path is evaluated
        *   - is not an absolute path
        *   - is not empty
        *   - on Windows, is not a reserved name such as "NUL"
        * 
        * If IsLocal(path) returns true, then
        * Join(base, path) will always produce a path contained within base and
        * Clean(path) will always produce an unrooted path with no ".." path elements.
        * 
        * IsLocal is a purely lexical operation.
        * In particular, it does not account for the effect of any symbolic links
        * that may exist in the filesystem.
    **/
    static public inline function isLocal(_path:stdgo.GoString):Bool return stdgo._internal.path.filepath.Filepath_islocal.isLocal(_path);
    /**
        * ToSlash returns the result of replacing each separator character
        * in path with a slash ('/') character. Multiple separators are
        * replaced by multiple slashes.
    **/
    static public inline function toSlash(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_toslash.toSlash(_path);
    /**
        * FromSlash returns the result of replacing each slash ('/') character
        * in path with a separator character. Multiple slashes are replaced
        * by multiple separators.
    **/
    static public inline function fromSlash(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(_path);
    /**
        * SplitList splits a list of paths joined by the OS-specific ListSeparator,
        * usually found in PATH or GOPATH environment variables.
        * Unlike strings.Split, SplitList returns an empty slice when passed an empty
        * string.
    **/
    static public inline function splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> return stdgo._internal.path.filepath.Filepath_splitlist.splitList(_path);
    /**
        * Split splits path immediately following the final Separator,
        * separating it into a directory and file name component.
        * If there is no Separator in path, Split returns an empty dir
        * and file set to path.
        * The returned values have the property that path = dir+file.
    **/
    static public inline function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.path.filepath.Filepath_split.split(_path);
    /**
        * Join joins any number of path elements into a single path,
        * separating them with an OS specific Separator. Empty elements
        * are ignored. The result is Cleaned. However, if the argument
        * list is empty or all its elements are empty, Join returns
        * an empty string.
        * On Windows, the result will only be a UNC path if the first
        * non-empty element is a UNC path.
    **/
    static public inline function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString return stdgo._internal.path.filepath.Filepath_join.join(...[for (i in _elem) i]);
    /**
        * Ext returns the file name extension used by path.
        * The extension is the suffix beginning at the final dot
        * in the final element of path; it is empty if there is
        * no dot.
    **/
    static public inline function ext(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_ext.ext(_path);
    /**
        * EvalSymlinks returns the path name after the evaluation of any symbolic
        * links.
        * If path is relative the result will be relative to the current directory,
        * unless one of the components is an absolute symbolic link.
        * EvalSymlinks calls Clean on the result.
    **/
    static public inline function evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_path);
    /**
        * Abs returns an absolute representation of path.
        * If the path is not absolute it will be joined with the current
        * working directory to turn it into an absolute path. The absolute
        * path name for a given file is not guaranteed to be unique.
        * Abs calls Clean on the result.
    **/
    static public inline function abs(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath_abs.abs(_path);
    /**
        * Rel returns a relative path that is lexically equivalent to targpath when
        * joined to basepath with an intervening separator. That is,
        * Join(basepath, Rel(basepath, targpath)) is equivalent to targpath itself.
        * On success, the returned path will always be relative to basepath,
        * even if basepath and targpath share no elements.
        * An error is returned if targpath can't be made relative to basepath or if
        * knowing the current working directory would be necessary to compute it.
        * Rel calls Clean on the result.
    **/
    static public inline function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath_rel.rel(_basepath, _targpath);
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
        * WalkDir does not follow symbolic links.
        * 
        * WalkDir calls fn with paths that use the separator character appropriate
        * for the operating system. This is unlike [io/fs.WalkDir], which always
        * uses slash separated paths.
    **/
    static public inline function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error return stdgo._internal.path.filepath.Filepath_walkdir.walkDir(_root, _fn);
    /**
        * Walk walks the file tree rooted at root, calling fn for each file or
        * directory in the tree, including root.
        * 
        * All errors that arise visiting files and directories are filtered by fn:
        * see the WalkFunc documentation for details.
        * 
        * The files are walked in lexical order, which makes the output deterministic
        * but requires Walk to read an entire directory into memory before proceeding
        * to walk that directory.
        * 
        * Walk does not follow symbolic links.
        * 
        * Walk is less efficient than WalkDir, introduced in Go 1.16,
        * which avoids calling os.Lstat on every visited file or directory.
    **/
    static public inline function walk(_root:stdgo.GoString, _fn:WalkFunc):stdgo.Error return stdgo._internal.path.filepath.Filepath_walk.walk(_root, _fn);
    /**
        * Base returns the last element of path.
        * Trailing path separators are removed before extracting the last element.
        * If the path is empty, Base returns ".".
        * If the path consists entirely of separators, Base returns a single separator.
    **/
    static public inline function base(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_base.base(_path);
    /**
        * Dir returns all but the last element of path, typically the path's directory.
        * After dropping the final element, Dir calls Clean on the path and trailing
        * slashes are removed.
        * If the path is empty, Dir returns ".".
        * If the path consists entirely of separators, Dir returns a single separator.
        * The returned path does not end in a separator unless it is the root directory.
    **/
    static public inline function dir(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_dir.dir(_path);
    /**
        * VolumeName returns leading volume name.
        * Given "C:\foo\bar" it returns "C:" on Windows.
        * Given "\\host\share\foo" it returns "\\host\share".
        * On other platforms it returns "".
    **/
    static public inline function volumeName(_path:stdgo.GoString):stdgo.GoString return stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path);
    /**
        * IsAbs reports whether the path is absolute.
    **/
    static public inline function isAbs(_path:stdgo.GoString):Bool return stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path);
    /**
        * HasPrefix exists for historical compatibility and should not be used.
        * 
        * Deprecated: HasPrefix does not respect path boundaries and
        * does not ignore case when required.
    **/
    static public inline function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Bool return stdgo._internal.path.filepath.Filepath_hasprefix.hasPrefix(_p, _prefix);
}
