package stdgo.embed;
@:structInit @:using(FS_static_extension) abstract FS(stdgo._internal.embed.Embed_fs.FS) from stdgo._internal.embed.Embed_fs.FS to stdgo._internal.embed.Embed_fs.FS {
    public var _files(get, set) : Array<T_file>;
    function get__files():Array<T_file> return this._files;
    function set__files(v:Array<T_file>):Array<T_file> {
        this._files = (v : stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>>);
        return v;
    }
    public function new(?_files:Array<T_file>) this = new stdgo._internal.embed.Embed_fs.FS((_files : stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(T_file_static_extension) @:dox(hide) abstract T_file(stdgo._internal.embed.Embed_t_file.T_file) from stdgo._internal.embed.Embed_t_file.T_file to stdgo._internal.embed.Embed_t_file.T_file {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _data(get, set) : String;
    function get__data():String return this._data;
    function set__data(v:String):String {
        this._data = (v : stdgo.GoString);
        return v;
    }
    public var _hash(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hash) i]);
    function set__hash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_name:String, ?_data:String, ?_hash:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.embed.Embed_t_file.T_file((_name : stdgo.GoString), (_data : stdgo.GoString), ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(T_openFile_static_extension) @:dox(hide) abstract T_openFile(stdgo._internal.embed.Embed_t_openfile.T_openFile) from stdgo._internal.embed.Embed_t_openfile.T_openFile to stdgo._internal.embed.Embed_t_openfile.T_openFile {
    public var _f(get, set) : T_file;
    function get__f():T_file return this._f;
    function set__f(v:T_file):T_file {
        this._f = (v : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_f:T_file, ?_offset:haxe.Int64) this = new stdgo._internal.embed.Embed_t_openfile.T_openFile((_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>), (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(T_openDir_static_extension) @:dox(hide) abstract T_openDir(stdgo._internal.embed.Embed_t_opendir.T_openDir) from stdgo._internal.embed.Embed_t_opendir.T_openDir to stdgo._internal.embed.Embed_t_opendir.T_openDir {
    public var _f(get, set) : T_file;
    function get__f():T_file return this._f;
    function set__f(v:T_file):T_file {
        this._f = (v : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return v;
    }
    public var _files(get, set) : Array<T_file>;
    function get__files():Array<T_file> return [for (i in this._files) i];
    function set__files(v:Array<T_file>):Array<T_file> {
        this._files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_f:T_file, ?_files:Array<T_file>, ?_offset:StdTypes.Int) this = new stdgo._internal.embed.Embed_t_opendir.T_openDir((_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>), ([for (i in _files) i] : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FSPointer = stdgo._internal.embed.Embed_fspointer.FSPointer;
class FS_static_extension {
    static public function readFile(_f:FS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.embed.Embed_fs_static_extension.FS_static_extension.readFile(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:FS, _name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.embed.Embed_fs_static_extension.FS_static_extension.readDir(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_f:FS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_file.File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.embed.Embed_fs_static_extension.FS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readDir(_f:FS, _dir:String):Array<T_file> {
        final _dir = (_dir : stdgo.GoString);
        return [for (i in stdgo._internal.embed.Embed_fs_static_extension.FS_static_extension._readDir(_f, _dir)) i];
    }
    static public function _lookup(_f:FS, _name:String):T_file {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.embed.Embed_fs_static_extension.FS_static_extension._lookup(_f, _name);
    }
}
@:dox(hide) typedef T_filePointer = stdgo._internal.embed.Embed_t_filepointer.T_filePointer;
@:dox(hide) class T_file_static_extension {
    static public function string(_f:T_file):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.string(_f);
    }
    static public function mode(_f:T_file):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.mode(_f);
    }
    static public function info(_f:T_file):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return {
            final obj = stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.info(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_f:T_file):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.type(_f);
    }
    static public function sys(_f:T_file):stdgo.AnyInterface {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.sys(_f);
    }
    static public function isDir(_f:T_file):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.isDir(_f);
    }
    static public function modTime(_f:T_file):stdgo._internal.time.Time_time.Time {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.modTime(_f);
    }
    static public function size(_f:T_file):haxe.Int64 {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.size(_f);
    }
    static public function name(_f:T_file):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        return stdgo._internal.embed.Embed_t_file_static_extension.T_file_static_extension.name(_f);
    }
}
@:dox(hide) typedef T_openFilePointer = stdgo._internal.embed.Embed_t_openfilepointer.T_openFilePointer;
@:dox(hide) class T_openFile_static_extension {
    static public function readAt(_f:T_openFile, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.embed.Embed_t_openfile_static_extension.T_openFile_static_extension.readAt(_f, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:T_openFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.embed.Embed_t_openfile_static_extension.T_openFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_openFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.embed.Embed_t_openfile_static_extension.T_openFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_f:T_openFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>);
        return {
            final obj = stdgo._internal.embed.Embed_t_openfile_static_extension.T_openFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_openFile):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>);
        return stdgo._internal.embed.Embed_t_openfile_static_extension.T_openFile_static_extension.close(_f);
    }
}
@:dox(hide) typedef T_openDirPointer = stdgo._internal.embed.Embed_t_opendirpointer.T_openDirPointer;
@:dox(hide) class T_openDir_static_extension {
    static public function readDir(_d:T_openDir, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.embed.Embed_t_opendir_static_extension.T_openDir_static_extension.readDir(_d, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(_d:T_openDir, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.embed.Embed_t_opendir_static_extension.T_openDir_static_extension.read(_d, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_d:T_openDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>);
        return {
            final obj = stdgo._internal.embed.Embed_t_opendir_static_extension.T_openDir_static_extension.stat(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_d:T_openDir):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>);
        return stdgo._internal.embed.Embed_t_opendir_static_extension.T_openDir_static_extension.close(_d);
    }
}
/**
    * Package embed provides access to files embedded in the running Go program.
    * 
    * Go source files that import "embed" can use the //go:embed directive
    * to initialize a variable of type string, []byte, or FS with the contents of
    * files read from the package directory or subdirectories at compile time.
    * 
    * For example, here are three ways to embed a file named hello.txt
    * and then print its contents at run time.
    * 
    * Embedding one file into a string:
    * 
    * 	import _ "embed"
    * 
    * 	//go:embed hello.txt
    * 	var s string
    * 	print(s)
    * 
    * Embedding one file into a slice of bytes:
    * 
    * 	import _ "embed"
    * 
    * 	//go:embed hello.txt
    * 	var b []byte
    * 	print(string(b))
    * 
    * Embedded one or more files into a file system:
    * 
    * 	import "embed"
    * 
    * 	//go:embed hello.txt
    * 	var f embed.FS
    * 	data, _ := f.ReadFile("hello.txt")
    * 	print(string(data))
    * 
    * # Directives
    * 
    * A //go:embed directive above a variable declaration specifies which files to embed,
    * using one or more path.Match patterns.
    * 
    * The directive must immediately precede a line containing the declaration of a single variable.
    * Only blank lines and ‘//’ line comments are permitted between the directive and the declaration.
    * 
    * The type of the variable must be a string type, or a slice of a byte type,
    * or FS (or an alias of FS).
    * 
    * For example:
    * 
    * 	package server
    * 
    * 	import "embed"
    * 
    * 	// content holds our static web server content.
    * 	//go:embed image template
    * 	//go:embed html/index.html
    * 	var content embed.FS
    * 
    * The Go build system will recognize the directives and arrange for the declared variable
    * (in the example above, content) to be populated with the matching files from the file system.
    * 
    * The //go:embed directive accepts multiple space-separated patterns for
    * brevity, but it can also be repeated, to avoid very long lines when there are
    * many patterns. The patterns are interpreted relative to the package directory
    * containing the source file. The path separator is a forward slash, even on
    * Windows systems. Patterns may not contain ‘.’ or ‘..’ or empty path elements,
    * nor may they begin or end with a slash. To match everything in the current
    * directory, use ‘*’ instead of ‘.’. To allow for naming files with spaces in
    * their names, patterns can be written as Go double-quoted or back-quoted
    * string literals.
    * 
    * If a pattern names a directory, all files in the subtree rooted at that directory are
    * embedded (recursively), except that files with names beginning with ‘.’ or ‘_’
    * are excluded. So the variable in the above example is almost equivalent to:
    * 
    * 	// content is our static web server content.
    * 	//go:embed image template html/index.html
    * 	var content embed.FS
    * 
    * The difference is that ‘image’ embeds ‘image/.tempfile’ while ‘image’ does not.
    * Neither embeds ‘image/dir/.tempfile’.
    * 
    * If a pattern begins with the prefix ‘all:’, then the rule for walking directories is changed
    * to include those files beginning with ‘.’ or ‘_’. For example, ‘all:image’ embeds
    * both ‘image/.tempfile’ and ‘image/dir/.tempfile’.
    * 
    * The //go:embed directive can be used with both exported and unexported variables,
    * depending on whether the package wants to make the data available to other packages.
    * It can only be used with variables at package scope, not with local variables.
    * 
    * Patterns must not match files outside the package's module, such as ‘.git’ or symbolic links.
    * Patterns must not match files whose names include the special punctuation characters  " * < > ? ` ' | / \ and :.
    * Matches for empty directories are ignored. After that, each pattern in a //go:embed line
    * must match at least one file or non-empty directory.
    * 
    * If any patterns are invalid or have invalid matches, the build will fail.
    * 
    * # Strings and Bytes
    * 
    * The //go:embed line for a variable of type string or []byte can have only a single pattern,
    * and that pattern can match only a single file. The string or []byte is initialized with
    * the contents of that file.
    * 
    * The //go:embed directive requires importing "embed", even when using a string or []byte.
    * In source files that don't refer to embed.FS, use a blank import (import _ "embed").
    * 
    * # File Systems
    * 
    * For embedding a single file, a variable of type string or []byte is often best.
    * The FS type enables embedding a tree of files, such as a directory of static
    * web server content, as in the example above.
    * 
    * FS implements the io/fs package's FS interface, so it can be used with any package that
    * understands file systems, including net/http, text/template, and html/template.
    * 
    * For example, given the content variable in the example above, we can write:
    * 
    * 	http.Handle("/static/", http.StripPrefix("/static/", http.FileServer(http.FS(content))))
    * 
    * 	template.ParseFS(content, "*.tmpl")
    * 
    * # Tools
    * 
    * To support tools that analyze Go packages, the patterns found in //go:embed lines
    * are available in “go list” output. See the EmbedPatterns, TestEmbedPatterns,
    * and XTestEmbedPatterns fields in the “go help list” output.
**/
class Embed {

}
