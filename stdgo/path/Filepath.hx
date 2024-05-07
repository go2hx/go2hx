package stdgo.path;
/**
    Package filepath implements utility routines for manipulating filename paths
    in a way compatible with the target operating system-defined file paths.
    
    The filepath package uses either forward slashes or backslashes,
    depending on the operating system. To process paths such as URLs
    that always use forward slashes regardless of the operating
    system, see the [path] package.
**/
private var __go2hxdoc__package : Bool;
final separator : StdTypes.Int = stdgo._internal.path.filepath.Filepath.separator;
final listSeparator : StdTypes.Int = stdgo._internal.path.filepath.Filepath.listSeparator;
var errBadPattern(get, set) : stdgo.Error;
private function get_errBadPattern():stdgo.Error return stdgo._internal.path.filepath.Filepath.errBadPattern;
private function set_errBadPattern(v:stdgo.Error):stdgo.Error return stdgo._internal.path.filepath.Filepath.errBadPattern = v;
var skipDir(get, set) : stdgo.Error;
private function get_skipDir():stdgo.Error return stdgo._internal.path.filepath.Filepath.skipDir;
private function set_skipDir(v:stdgo.Error):stdgo.Error return stdgo._internal.path.filepath.Filepath.skipDir = v;
var skipAll(get, set) : stdgo.Error;
private function get_skipAll():stdgo.Error return stdgo._internal.path.filepath.Filepath.skipAll;
private function set_skipAll(v:stdgo.Error):stdgo.Error return stdgo._internal.path.filepath.Filepath.skipAll = v;
var lstatP(get, set) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; };
private function get_lstatP():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath.lstatP;
private function set_lstatP(v:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.path.filepath.Filepath.lstatP = v;
@:forward @:forward.new abstract T_lazybuf(stdgo._internal.path.filepath.Filepath.T_lazybuf) from stdgo._internal.path.filepath.Filepath.T_lazybuf to stdgo._internal.path.filepath.Filepath.T_lazybuf {

}
@:forward @:forward.new abstract T_statDirEntry(stdgo._internal.path.filepath.Filepath.T_statDirEntry) from stdgo._internal.path.filepath.Filepath.T_statDirEntry to stdgo._internal.path.filepath.Filepath.T_statDirEntry {

}
typedef WalkFunc = stdgo._internal.path.filepath.Filepath.WalkFunc;
/**
    Match reports whether name matches the shell file name pattern.
    The pattern syntax is:
    
    	pattern:
    		{ term }
    	term:
    		'*'         matches any sequence of non-Separator characters
    		'?'         matches any single non-Separator character
    		'[' [ '^' ] { character-range } ']'
    		            character class (must be non-empty)
    		c           matches character c (c != '*', '?', '\\', '[')
    		'\\' c      matches character c
    
    	character-range:
    		c           matches character c (c != '\\', '-', ']')
    		'\\' c      matches character c
    		lo '-' hi   matches character c for lo <= c <= hi
    
    Match requires pattern to match all of name, not just a substring.
    The only possible returned error is ErrBadPattern, when pattern
    is malformed.
    
    On Windows, escaping is disabled. Instead, '\\' is treated as
    path separator.
**/
function match(pattern:String, name:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.path.filepath.Filepath.match(pattern, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Glob returns the names of all files matching pattern or nil
    if there is no matching file. The syntax of patterns is the same
    as in Match. The pattern may describe hierarchical names such as
    /usr/|*|/bin/ed (assuming the Separator is '/').
    
    Glob ignores file system errors such as I/O errors reading directories.
    The only possible returned error is ErrBadPattern, when pattern
    is malformed.
**/
function glob(pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.path.filepath.Filepath.glob(pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    Clean returns the shortest path name equivalent to path
    by purely lexical processing. It applies the following rules
    iteratively until no further processing can be done:
    
     1. Replace multiple Separator elements with a single one.
     2. Eliminate each . path name element (the current directory).
     3. Eliminate each inner .. path name element (the parent directory)
        along with the non-.. element that precedes it.
     4. Eliminate .. elements that begin a rooted path:
        that is, replace "/.." by "/" at the beginning of a path,
        assuming Separator is '/'.
    
    The returned path ends in a slash only if it represents a root directory,
    such as "/" on Unix or `C:\` on Windows.
    
    Finally, any occurrences of slash are replaced by Separator.
    
    If the result of this process is an empty string, Clean
    returns the string ".".
    
    On Windows, Clean does not modify the volume name other than to replace
    occurrences of "/" with `\`.
    For example, Clean("//host/share/../x") returns `\\host\share\x`.
    
    See also Rob Pike, “Lexical File Names in Plan 9 or
    Getting Dot-Dot Right,”
    https://9p.io/sys/doc/lexnames.html
**/
function clean(path:String):String {
        return stdgo._internal.path.filepath.Filepath.clean(path);
    }
/**
    IsLocal reports whether path, using lexical analysis only, has all of these properties:
    
      - is within the subtree rooted at the directory in which path is evaluated
      - is not an absolute path
      - is not empty
      - on Windows, is not a reserved name such as "NUL"
    
    If IsLocal(path) returns true, then
    Join(base, path) will always produce a path contained within base and
    Clean(path) will always produce an unrooted path with no ".." path elements.
    
    IsLocal is a purely lexical operation.
    In particular, it does not account for the effect of any symbolic links
    that may exist in the filesystem.
**/
function isLocal(path:String):Bool {
        return stdgo._internal.path.filepath.Filepath.isLocal(path);
    }
/**
    ToSlash returns the result of replacing each separator character
    in path with a slash ('/') character. Multiple separators are
    replaced by multiple slashes.
**/
function toSlash(path:String):String {
        return stdgo._internal.path.filepath.Filepath.toSlash(path);
    }
/**
    FromSlash returns the result of replacing each slash ('/') character
    in path with a separator character. Multiple slashes are replaced
    by multiple separators.
**/
function fromSlash(path:String):String {
        return stdgo._internal.path.filepath.Filepath.fromSlash(path);
    }
/**
    SplitList splits a list of paths joined by the OS-specific ListSeparator,
    usually found in PATH or GOPATH environment variables.
    Unlike strings.Split, SplitList returns an empty slice when passed an empty
    string.
**/
function splitList(path:String):Array<String> {
        return [for (i in stdgo._internal.path.filepath.Filepath.splitList(path)) i];
    }
/**
    Split splits path immediately following the final Separator,
    separating it into a directory and file name component.
    If there is no Separator in path, Split returns an empty dir
    and file set to path.
    The returned values have the property that path = dir+file.
**/
function split(path:String):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.path.filepath.Filepath.split(path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Join joins any number of path elements into a single path,
    separating them with an OS specific Separator. Empty elements
    are ignored. The result is Cleaned. However, if the argument
    list is empty or all its elements are empty, Join returns
    an empty string.
    On Windows, the result will only be a UNC path if the first
    non-empty element is a UNC path.
**/
function join(elem:haxe.Rest<String>):String {
        return stdgo._internal.path.filepath.Filepath.join(...elem);
    }
/**
    Ext returns the file name extension used by path.
    The extension is the suffix beginning at the final dot
    in the final element of path; it is empty if there is
    no dot.
**/
function ext(path:String):String {
        return stdgo._internal.path.filepath.Filepath.ext(path);
    }
/**
    EvalSymlinks returns the path name after the evaluation of any symbolic
    links.
    If path is relative the result will be relative to the current directory,
    unless one of the components is an absolute symbolic link.
    EvalSymlinks calls Clean on the result.
**/
function evalSymlinks(path:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.path.filepath.Filepath.evalSymlinks(path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Abs returns an absolute representation of path.
    If the path is not absolute it will be joined with the current
    working directory to turn it into an absolute path. The absolute
    path name for a given file is not guaranteed to be unique.
    Abs calls Clean on the result.
**/
function abs(path:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.path.filepath.Filepath.abs(path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Rel returns a relative path that is lexically equivalent to targpath when
    joined to basepath with an intervening separator. That is,
    Join(basepath, Rel(basepath, targpath)) is equivalent to targpath itself.
    On success, the returned path will always be relative to basepath,
    even if basepath and targpath share no elements.
    An error is returned if targpath can't be made relative to basepath or if
    knowing the current working directory would be necessary to compute it.
    Rel calls Clean on the result.
**/
function rel(basepath:String, targpath:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.path.filepath.Filepath.rel(basepath, targpath);
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
    
    WalkDir does not follow symbolic links.
    
    WalkDir calls fn with paths that use the separator character appropriate
    for the operating system. This is unlike [io/fs.WalkDir], which always
    uses slash separated paths.
**/
function walkDir(root:String, fn:stdgo._internal.io.fs.Fs.WalkDirFunc):stdgo.Error {
        return stdgo._internal.path.filepath.Filepath.walkDir(root, fn);
    }
/**
    Walk walks the file tree rooted at root, calling fn for each file or
    directory in the tree, including root.
    
    All errors that arise visiting files and directories are filtered by fn:
    see the WalkFunc documentation for details.
    
    The files are walked in lexical order, which makes the output deterministic
    but requires Walk to read an entire directory into memory before proceeding
    to walk that directory.
    
    Walk does not follow symbolic links.
    
    Walk is less efficient than WalkDir, introduced in Go 1.16,
    which avoids calling os.Lstat on every visited file or directory.
**/
function walk(root:String, fn:WalkFunc):stdgo.Error {
        return stdgo._internal.path.filepath.Filepath.walk(root, fn);
    }
/**
    Base returns the last element of path.
    Trailing path separators are removed before extracting the last element.
    If the path is empty, Base returns ".".
    If the path consists entirely of separators, Base returns a single separator.
**/
function base(path:String):String {
        return stdgo._internal.path.filepath.Filepath.base(path);
    }
/**
    Dir returns all but the last element of path, typically the path's directory.
    After dropping the final element, Dir calls Clean on the path and trailing
    slashes are removed.
    If the path is empty, Dir returns ".".
    If the path consists entirely of separators, Dir returns a single separator.
    The returned path does not end in a separator unless it is the root directory.
**/
function dir(path:String):String {
        return stdgo._internal.path.filepath.Filepath.dir(path);
    }
/**
    VolumeName returns leading volume name.
    Given "C:\foo\bar" it returns "C:" on Windows.
    Given "\\host\share\foo" it returns "\\host\share".
    On other platforms it returns "".
**/
function volumeName(path:String):String {
        return stdgo._internal.path.filepath.Filepath.volumeName(path);
    }
/**
    IsAbs reports whether the path is absolute.
**/
function isAbs(path:String):Bool {
        return stdgo._internal.path.filepath.Filepath.isAbs(path);
    }
/**
    HasPrefix exists for historical compatibility and should not be used.
    
    Deprecated: HasPrefix does not respect path boundaries and
    does not ignore case when required.
**/
function hasPrefix(p:String, prefix:String):Bool {
        return stdgo._internal.path.filepath.Filepath.hasPrefix(p, prefix);
    }
@:forward @:forward.new abstract T_lazybuf_asInterface(stdgo._internal.path.filepath.Filepath.T_lazybuf_asInterface) from stdgo._internal.path.filepath.Filepath.T_lazybuf_asInterface to stdgo._internal.path.filepath.Filepath.T_lazybuf_asInterface {

}
@:forward @:forward.new abstract T_lazybuf_static_extension(stdgo._internal.path.filepath.Filepath.T_lazybuf_static_extension) from stdgo._internal.path.filepath.Filepath.T_lazybuf_static_extension to stdgo._internal.path.filepath.Filepath.T_lazybuf_static_extension {

}
@:forward @:forward.new abstract T_statDirEntry_asInterface(stdgo._internal.path.filepath.Filepath.T_statDirEntry_asInterface) from stdgo._internal.path.filepath.Filepath.T_statDirEntry_asInterface to stdgo._internal.path.filepath.Filepath.T_statDirEntry_asInterface {

}
@:forward @:forward.new abstract T_statDirEntry_static_extension(stdgo._internal.path.filepath.Filepath.T_statDirEntry_static_extension) from stdgo._internal.path.filepath.Filepath.T_statDirEntry_static_extension to stdgo._internal.path.filepath.Filepath.T_statDirEntry_static_extension {

}