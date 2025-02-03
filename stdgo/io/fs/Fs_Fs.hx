package stdgo.io.fs;
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
    static public inline function formatFileInfo(_info:FileInfo):String {
        return stdgo._internal.io.fs.Fs_formatFileInfo.formatFileInfo(_info);
    }
    /**
        FormatDirEntry returns a formatted version of dir for human readability.
        Implementations of DirEntry can call this from a String method.
        The outputs for a directory named subdir and a file named hello.go are:
        
        	d subdir/
        	- hello.go
    **/
    static public inline function formatDirEntry(_dir:DirEntry):String {
        return stdgo._internal.io.fs.Fs_formatDirEntry.formatDirEntry(_dir);
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
    static public inline function validPath(_name:String):Bool {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.io.fs.Fs_validPath.validPath(_name);
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
    static public inline function glob(_fsys:FS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_glob.glob(_fsys, _pattern);
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
    static public inline function readDir(_fsys:FS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_readDir.readDir(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        FileInfoToDirEntry returns a DirEntry that returns information from info.
        If info is nil, FileInfoToDirEntry returns nil.
    **/
    static public inline function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        return stdgo._internal.io.fs.Fs_fileInfoToDirEntry.fileInfoToDirEntry(_info);
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
    static public inline function readFile(_fsys:FS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_readFile.readFile(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Stat returns a FileInfo describing the named file from the file system.
        
        If fs implements StatFS, Stat calls fs.Stat.
        Otherwise, Stat opens the file to stat it.
    **/
    static public inline function stat(_fsys:FS, _name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_stat.stat(_fsys, _name);
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
    static public inline function sub(_fsys:FS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_sub.sub(_fsys, _dir);
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
    static public inline function walkDir(_fsys:FS, _root:String, _fn:WalkDirFunc):stdgo.Error {
        final _root = (_root : stdgo.GoString);
        return stdgo._internal.io.fs.Fs_walkDir.walkDir(_fsys, _root, _fn);
    }
}
