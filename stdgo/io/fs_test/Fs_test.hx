package stdgo.io.fs_test;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _isValidPathTests : Slice<stdgo.io.fs_test.Fs_test.T__struct_0> = ((new Slice<stdgo.io.fs_test.Fs_test.T__struct_0>(
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("." : GoString))), true) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x" : GoString))), true) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/y" : GoString))), true) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0((""), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0((((".." : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("/" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("/x" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/y/" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("/x/y" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("./" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("./x" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/." : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/./y" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("../" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("../x" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/.." : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x/../y" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0(((("x//y" : GoString))), false) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0("x\\", true) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0("x\\y", true) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0("x:y", true) : stdgo.io.fs_test.Fs_test.T__struct_0)),
((new stdgo.io.fs_test.Fs_test.T__struct_0("\\x", true) : stdgo.io.fs_test.Fs_test.T__struct_0))) : Slice<stdgo.io.fs_test.Fs_test.T__struct_0>));
var _globTests : Slice<stdgo.io.fs_test.Fs_test.T__struct_1> = ((new Slice<stdgo.io.fs_test.Fs_test.T__struct_1>(((new stdgo.io.fs_test.Fs_test.T__struct_1(stdgo.os.Os.dirFS(((("." : GoString)))), ((("glob.go" : GoString))), ((("glob.go" : GoString)))) : stdgo.io.fs_test.Fs_test.T__struct_1)), ((new stdgo.io.fs_test.Fs_test.T__struct_1(stdgo.os.Os.dirFS(((("." : GoString)))), ((("gl?b.go" : GoString))), ((("glob.go" : GoString)))) : stdgo.io.fs_test.Fs_test.T__struct_1)), ((new stdgo.io.fs_test.Fs_test.T__struct_1(stdgo.os.Os.dirFS(((("." : GoString)))), "gl\\ob.go", ((("glob.go" : GoString)))) : stdgo.io.fs_test.Fs_test.T__struct_1)), ((new stdgo.io.fs_test.Fs_test.T__struct_1(stdgo.os.Os.dirFS(((("." : GoString)))), ((("*" : GoString))), ((("glob.go" : GoString)))) : stdgo.io.fs_test.Fs_test.T__struct_1)), ((new stdgo.io.fs_test.Fs_test.T__struct_1(stdgo.os.Os.dirFS((((".." : GoString)))), ((("*/glob.go" : GoString))), ((("fs/glob.go" : GoString)))) : stdgo.io.fs_test.Fs_test.T__struct_1))) : Slice<stdgo.io.fs_test.Fs_test.T__struct_1>));
var _testFsys : stdgo.testing.fstest.Fstest.MapFS = Go.map(((("hello.txt" : GoString))) => (({ data : ((((("hello, world" : GoString))) : Slice<GoByte>)), mode : ((302 : GoUInt32)), modTime : (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__()), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFile)), ((("sub/goodbye.txt" : GoString))) => (({ data : ((((("goodbye, world" : GoString))) : Slice<GoByte>)), mode : ((302 : GoUInt32)), modTime : (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__()), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFile)));
var _tree : stdgo.io.fs_test.Fs_test.Node = ((new stdgo.io.fs_test.Fs_test.Node(((("testdata" : GoString))), ((new Slice<stdgo.io.fs_test.Fs_test.Node>(((new stdgo.io.fs_test.Fs_test.Node(((("a" : GoString))), ((null : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node)), ((new stdgo.io.fs_test.Fs_test.Node(((("b" : GoString))), ((new Slice<stdgo.io.fs_test.Fs_test.Node>() : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node)), ((new stdgo.io.fs_test.Fs_test.Node(((("c" : GoString))), ((null : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node)), ((new stdgo.io.fs_test.Fs_test.Node(((("d" : GoString))), ((new Slice<stdgo.io.fs_test.Fs_test.Node>(((new stdgo.io.fs_test.Fs_test.Node(((("x" : GoString))), ((null : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node)), ((new stdgo.io.fs_test.Fs_test.Node(((("y" : GoString))), ((new Slice<stdgo.io.fs_test.Fs_test.Node>() : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node)), ((new stdgo.io.fs_test.Fs_test.Node(((("z" : GoString))), ((new Slice<stdgo.io.fs_test.Fs_test.Node>(((new stdgo.io.fs_test.Fs_test.Node(((("u" : GoString))), ((null : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node)), ((new stdgo.io.fs_test.Fs_test.Node(((("v" : GoString))), ((null : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node))) : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node))) : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node))) : Slice<stdgo.io.fs_test.Fs_test.Node>)), ((0 : GoInt))) : stdgo.io.fs_test.Fs_test.Node));
var _sysValue : GoInt = ((0 : GoInt));
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_globOnly_static_extension) class T_globOnly {
    @:keep
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; } {
        var _ = this;
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public var globFS : GlobFS = ((null : GlobFS));
    public function new(?globFS:GlobFS) {
        if (globFS != null) this.globFS = globFS;
    }
    public function glob(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return globFS.glob(_pattern);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_globOnly(globFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_readDirOnly_static_extension) class T_readDirOnly {
    @:keep
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; } {
        var _ = this;
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public var readDirFS : ReadDirFS = ((null : ReadDirFS));
    public function new(?readDirFS:ReadDirFS) {
        if (readDirFS != null) this.readDirFS = readDirFS;
    }
    public function readDir(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return readDirFS.readDir(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readDirOnly(readDirFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_readFileOnly_static_extension) class T_readFileOnly {
    @:keep
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; } {
        var _ = this;
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public var readFileFS : ReadFileFS = ((null : ReadFileFS));
    public function new(?readFileFS:ReadFileFS) {
        if (readFileFS != null) this.readFileFS = readFileFS;
    }
    public function readFile(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return readFileFS.readFile(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readFileOnly(readFileFS);
    }
}
@:structInit class T_openOnly {
    @:embedded
    public var fs : FS = ((null : FS));
    public function new(?fs:FS) {
        if (fs != null) this.fs = fs;
    }
    public function open(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return fs.open(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openOnly(fs);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_statOnly_static_extension) class T_statOnly {
    @:keep
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; } {
        var _ = this;
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public var statFS : StatFS = ((null : StatFS));
    public function new(?statFS:StatFS) {
        if (statFS != null) this.statFS = statFS;
    }
    public function stat(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return statFS.stat(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statOnly(statFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_subOnly_static_extension) class T_subOnly {
    @:keep
    public function open(_name:GoString):{ var _0 : File; var _1 : Error; } {
        var _ = this;
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public var subFS : SubFS = ((null : SubFS));
    public function new(?subFS:SubFS) {
        if (subFS != null) this.subFS = subFS;
    }
    public function sub(_dir:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return subFS.sub(_dir);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_subOnly(subFS);
    }
}
@:structInit class Node {
    public var _name : GoString = (("" : GoString));
    public var _entries : Slice<stdgo.io.fs_test.Fs_test.Node> = ((null : Slice<stdgo.io.fs_test.Fs_test.Node>));
    public var _mark : GoInt = ((0 : GoInt));
    public function new(?_name:GoString, ?_entries:Slice<stdgo.io.fs_test.Fs_test.Node>, ?_mark:GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
@:structInit @:local class T__struct_0 {
    public var _name : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_ok) + "}";
    public function new(?_name:GoString, ?_ok:Bool, ?toString) {
        if (_name != null) this._name = _name;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_name, _ok);
    }
}
@:structInit @:local class T__struct_1 {
    public var _fs : FS = ((null : FS));
    public var _pattern : GoString = (("" : GoString));
    public var _result : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_fs) + " " + Go.string(_pattern) + " " + Go.string(_result) + "}";
    public function new(?_fs:FS, ?_pattern:GoString, ?_result:GoString, ?toString) {
        if (_fs != null) this._fs = _fs;
        if (_pattern != null) this._pattern = _pattern;
        if (_result != null) this._result = _result;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_fs, _pattern, _result);
    }
}
@:structInit @:local class T__struct_2 {
    public var _path : GoString = (("" : GoString));
    public var _wantMode : FileMode = new FileMode();
    public var _wantDir : Bool = false;
    public function toString():String return "{" + Go.string(_path) + " " + Go.string(_wantMode) + " " + Go.string(_wantDir) + "}";
    public function new(?_path:GoString, ?_wantMode:FileMode, ?_wantDir:Bool, ?toString) {
        if (_path != null) this._path = _path;
        if (_wantMode != null) this._wantMode = _wantMode;
        if (_wantDir != null) this._wantDir = _wantDir;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_path, _wantMode, _wantDir);
    }
}
function exampleWalkDir():Void {
        var _root:GoString = ((("/usr/local/go/bin" : GoString)));
        var _fileSystem:FS = stdgo.os.Os.dirFS(_root);
        stdgo.io.fs.Fs.walkDir(_fileSystem, ((("." : GoString))), function(_path:GoString, _d:DirEntry, _err:Error):Error {
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            stdgo.fmt.Fmt.println(_path);
            return ((null : stdgo.Error));
        });
    }
function testValidPath(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _isValidPathTests) {
            var _ok:Bool = validPath(_tt._name);
            if (_ok != _tt._ok) {
                _t.errorf(((("ValidPath(%q) = %v, want %v" : GoString))), Go.toInterface(_tt._name), Go.toInterface(_ok), Go.toInterface(_tt._ok));
            };
        };
    }
function testGlob(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _globTests) {
            var __tmp__ = glob(_tt._fs, _tt._pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Glob error for %q: %s" : GoString))), Go.toInterface(_tt._pattern), Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _tt._result)) {
                _t.errorf(((("Glob(%#q) = %#v want %v" : GoString))), Go.toInterface(_tt._pattern), Go.toInterface(_matches), Go.toInterface(_tt._result));
            };
        };
        for (_1 => _pattern in ((new Slice<GoString>(((("no_match" : GoString))), ((("../*/no_match" : GoString))), "\\*") : Slice<GoString>))) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(((("." : GoString)))), _pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Glob error for %q: %s" : GoString))), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if ((_matches != null ? _matches.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.errorf(((("Glob(%#q) = %#v want []" : GoString))), Go.toInterface(_pattern), Go.toInterface(_matches));
            };
        };
    }
function testGlobError(_t:stdgo.testing.Testing.T_):Void {
        var _bad:Slice<GoString> = ((new Slice<GoString>("[]", "nonexist/[]") : Slice<GoString>));
        for (_0 => _pattern in _bad) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(((("." : GoString)))), _pattern), _1:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != stdgo.path.Path.errBadPattern) {
                _t.errorf(((("Glob(fs, %#q) returned err=%v, want path.ErrBadPattern" : GoString))), Go.toInterface(_pattern), Go.toInterface(_err));
            };
        };
    }
function _contains(_vector:Slice<GoString>, _s:GoString):Bool {
        for (_0 => _elem in _vector) {
            if (_elem == _s) {
                return true;
            };
        };
        return false;
    }
function testGlobMethod(_t:stdgo.testing.Testing.T_):Void {
        var _check:(GoString, Slice<GoString>, stdgo.Error) -> Void = function(_desc:GoString, _names:Slice<GoString>, _err:Error):Void {
            _t.helper();
            if (((_err != null) || ((_names != null ? _names.length : ((0 : GoInt))) != ((1 : GoInt)))) || ((_names != null ? _names[((0 : GoInt))] : (("" : GoString))) != ((("hello.txt" : GoString))))) {
                _t.errorf(((("Glob(%s) = %v, %v, want %v, nil" : GoString))), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface(((new Slice<GoString>(((("hello.txt" : GoString)))) : Slice<GoString>))));
            };
        };
        var __tmp__ = glob(((new stdgo.io.fs_test.Fs_test.T_globOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_globOnly)), ((("*.txt" : GoString)))), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((("readDirOnly" : GoString))), _names, _err);
        {
            var __tmp__ = glob(((new stdgo.io.fs_test.Fs_test.T_openOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_openOnly)), ((("*.txt" : GoString))));
            _names = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((("openOnly" : GoString))), _names, _err);
    }
function testReadDir(_t:stdgo.testing.Testing.T_):Void {
        var _check:(GoString, Slice<DirEntry>, stdgo.Error) -> Void = function(_desc:GoString, _dirs:Slice<DirEntry>, _err:Error):Void {
            _t.helper();
            if ((((_err != null) || ((_dirs != null ? _dirs.length : ((0 : GoInt))) != ((2 : GoInt)))) || ((_dirs != null ? _dirs[((0 : GoInt))] : ((null : DirEntry))).name() != ((("hello.txt" : GoString))))) || ((_dirs != null ? _dirs[((1 : GoInt))] : ((null : DirEntry))).name() != ((("sub" : GoString))))) {
                var _names:Slice<GoString> = ((null : Slice<GoString>));
                for (_0 => _d in _dirs) {
                    _names = (_names != null ? _names.__append__(_d.name()) : new Slice<GoString>(_d.name()));
                };
                _t.errorf(((("ReadDir(%s) = %v, %v, want %v, nil" : GoString))), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface(((new Slice<GoString>(((("hello.txt" : GoString))), ((("sub" : GoString)))) : Slice<GoString>))));
            };
        };
        var __tmp__ = readDir(((new stdgo.io.fs_test.Fs_test.T_readDirOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_readDirOnly)), ((("." : GoString)))), _dirs:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((("readDirOnly" : GoString))), _dirs, _err);
        {
            var __tmp__ = readDir(((new stdgo.io.fs_test.Fs_test.T_openOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_openOnly)), ((("." : GoString))));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((("openOnly" : GoString))), _dirs, _err);
        var __tmp__ = sub(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys), ((("." : GoString)))), _sub:FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = readDir(_sub, ((("." : GoString))));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((("sub(.)" : GoString))), _dirs, _err);
    }
function testFileInfoToDirEntry(_t:stdgo.testing.Testing.T_):Void {
        var _testFs:stdgo.testing.fstest.Fstest.MapFS = (Go.map(((("notadir.txt" : GoString))) => (({ data : ((((("hello, world" : GoString))) : Slice<GoByte>)), mode : ((0 : GoUInt32)), modTime : (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__()), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFile)), ((("adir" : GoString))) => (({ data : ((null : Slice<GoUInt8>)), mode : (("2147483648" : GoUInt32)), modTime : (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__()), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFile))) == null ? null : Go.map(((("notadir.txt" : GoString))) => (({ data : ((((("hello, world" : GoString))) : Slice<GoByte>)), mode : ((0 : GoUInt32)), modTime : (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__()), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFile)), ((("adir" : GoString))) => (({ data : ((null : Slice<GoUInt8>)), mode : (("2147483648" : GoUInt32)), modTime : (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__()), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFile))).__copy__());
        var _tests:Slice<stdgo.io.fs_test.Fs_test.T__struct_2> = ((new Slice<stdgo.io.fs_test.Fs_test.T__struct_2>(((({ _path : ((("notadir.txt" : GoString))), _wantMode : ((0 : GoUInt32)), _wantDir : false } : stdgo.io.fs_test.Fs_test.T__struct_2)) == null ? null : (({ _path : ((("notadir.txt" : GoString))), _wantMode : ((0 : GoUInt32)), _wantDir : false } : stdgo.io.fs_test.Fs_test.T__struct_2)).__copy__()), ((({ _path : ((("adir" : GoString))), _wantMode : (("2147483648" : GoUInt32)), _wantDir : true } : stdgo.io.fs_test.Fs_test.T__struct_2)) == null ? null : (({ _path : ((("adir" : GoString))), _wantMode : (("2147483648" : GoUInt32)), _wantDir : true } : stdgo.io.fs_test.Fs_test.T__struct_2)).__copy__())) : Slice<stdgo.io.fs_test.Fs_test.T__struct_2>));
        for (_0 => _test in _tests) {
            var _test:stdgo.io.fs_test.Fs_test.T__struct_2 = (_test == null ? null : _test.__copy__());
            _t.run(_test._path, function(_t:stdgo.testing.Testing.T_):Void {
                var __tmp__ = stat(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFs), _test._path), _fi:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var _dirEntry:DirEntry = fileInfoToDirEntry(_fi);
                {
                    var _g:FileMode = _dirEntry.type(), _w:FileMode = _test._wantMode;
                    if (_g != _w) {
                        _t.errorf(((("FileMode mismatch: got=%v, want=%v" : GoString))), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                {
                    var _g:GoString = _dirEntry.name(), _w:GoString = _test._path;
                    if (_g != _w) {
                        _t.errorf(((("Name mismatch: got=%v, want=%v" : GoString))), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                {
                    var _g:Bool = _dirEntry.isDir(), _w:Bool = _test._wantDir;
                    if (_g != _w) {
                        _t.errorf(((("IsDir mismatch: got=%v, want=%v" : GoString))), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            });
        };
    }
function testReadFile(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = readFile(((new stdgo.io.fs_test.Fs_test.T_readFileOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_readFileOnly)), ((("hello.txt" : GoString)))), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_data : GoString)) != ((("hello, world" : GoString)))) || (_err != null)) {
            _t.fatalf("ReadFile(readFileOnly, \"hello.txt\") = %q, %v, want %q, nil", Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((("hello, world" : GoString)))));
        };
        {
            var __tmp__ = readFile(((new stdgo.io.fs_test.Fs_test.T_openOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_openOnly)), ((("hello.txt" : GoString))));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_data : GoString)) != ((("hello, world" : GoString)))) || (_err != null)) {
            _t.fatalf("ReadFile(openOnly, \"hello.txt\") = %q, %v, want %q, nil", Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((("hello, world" : GoString)))));
        };
        var __tmp__ = sub(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys), ((("." : GoString)))), _sub:FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = readFile(_sub, ((("hello.txt" : GoString))));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_data : GoString)) != ((("hello, world" : GoString)))) || (_err != null)) {
            _t.fatalf("ReadFile(sub(.), \"hello.txt\") = %q, %v, want %q, nil", Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((("hello, world" : GoString)))));
        };
    }
function testStat(_t:stdgo.testing.Testing.T_):Void {
        var _check:(GoString, FileInfo, stdgo.Error) -> Void = function(_desc:GoString, _info:FileInfo, _err:Error):Void {
            _t.helper();
            if (((_err != null) || (_info == null)) || (_info.mode() != ((302 : GoUInt32)))) {
                var _infoStr:GoString = ((("<nil>" : GoString)));
                if (_info != null) {
                    _infoStr = stdgo.fmt.Fmt.sprintf(((("FileInfo(Mode: %#o)" : GoString))), Go.toInterface(_info.mode()));
                };
                _t.fatalf(((("Stat(%s) = %v, %v, want Mode:0456, nil" : GoString))), Go.toInterface(_desc), Go.toInterface(_infoStr), Go.toInterface(_err));
            };
        };
        var __tmp__ = stat(((new stdgo.io.fs_test.Fs_test.T_statOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_statOnly)), ((("hello.txt" : GoString)))), _info:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((("statOnly" : GoString))), _info, _err);
        {
            var __tmp__ = stat(((new stdgo.io.fs_test.Fs_test.T_openOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_openOnly)), ((("hello.txt" : GoString))));
            _info = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((("openOnly" : GoString))), _info, _err);
    }
function testSub(_t:stdgo.testing.Testing.T_):Void {
        var _check:(GoString, FS, stdgo.Error) -> Void = function(_desc:GoString, _sub:FS, _err:Error):Void {
            _t.helper();
            if (_err != null) {
                _t.errorf(((("Sub(sub): %v" : GoString))), Go.toInterface(_err));
                return;
            };
            var __tmp__ = readFile(_sub, ((("goodbye.txt" : GoString)))), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_data : GoString)) != ((("goodbye, world" : GoString)))) || (_err != null)) {
                _t.errorf("ReadFile(%s, \"goodbye.txt\" = %q, %v, want %q, nil", Go.toInterface(_desc), Go.toInterface(((_data : GoString))), Go.toInterface(_err), Go.toInterface(((("goodbye, world" : GoString)))));
            };
            var __tmp__ = readDir(_sub, ((("." : GoString)))), _dirs:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_dirs != null ? _dirs.length : ((0 : GoInt))) != ((1 : GoInt)))) || ((_dirs != null ? _dirs[((0 : GoInt))] : ((null : DirEntry))).name() != ((("goodbye.txt" : GoString))))) {
                var _names:Slice<GoString> = ((null : Slice<GoString>));
                for (_0 => _d in _dirs) {
                    _names = (_names != null ? _names.__append__(_d.name()) : new Slice<GoString>(_d.name()));
                };
                _t.errorf("ReadDir(%s, \".\") = %v, %v, want %v, nil", Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface(((new Slice<GoString>(((("goodbye.txt" : GoString)))) : Slice<GoString>))));
            };
        };
        var __tmp__ = sub(((new stdgo.io.fs_test.Fs_test.T_subOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_subOnly)), ((("sub" : GoString)))), _sub:FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((("subOnly" : GoString))), _sub, _err);
        {
            var __tmp__ = sub(((new stdgo.io.fs_test.Fs_test.T_openOnly(new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys)) : stdgo.io.fs_test.Fs_test.T_openOnly)), ((("sub" : GoString))));
            _sub = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((("openOnly" : GoString))), _sub, _err);
        {
            var __tmp__ = _sub.open(((("nonexist" : GoString))));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(Go.toInterface(((("Open(nonexist): succeeded" : GoString)))));
        };
        var __tmp__ = try {
            { value : ((((_err.__underlying__().value : Dynamic)) : PathError)), ok : true };
        } catch(_) {
            { value : ((null : PathError)), ok : false };
        }, _pe = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(((("Open(nonexist): error is %T, want *PathError" : GoString))), Go.toInterface(_err));
        };
        if (_pe.path != ((("nonexist" : GoString)))) {
            _t.fatalf(((("Open(nonexist): err.Path = %q, want %q" : GoString))), Go.toInterface(_pe.path), Go.toInterface(((("nonexist" : GoString)))));
        };
    }
function _walkTree(_n:Node, _path:GoString, _f:(_path:GoString, _n:Node) -> Void):Void {
        _f(_path, _n);
        for (_0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.Path.join(_path, _e._name), _f);
        };
    }
function _makeTree(_t:stdgo.testing.Testing.T_):FS {
        var _fsys:stdgo.testing.fstest.Fstest.MapFS = (Go.map() == null ? null : Go.map().__copy__());
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if (_n._entries == null) {
                if (_fsys != null) _fsys[_path] = ((new stdgo.testing.fstest.Fstest.MapFile() : stdgo.testing.fstest.Fstest.MapFile));
            } else {
                if (_fsys != null) _fsys[_path] = (({ mode : (("2147483648" : GoUInt32)), data : ((null : Slice<GoUInt8>)), modTime : new stdgo.time.Time.Time(), sys : ((null : AnyInterface)) } : stdgo.testing.fstest.Fstest.MapFile));
            };
        });
        return new stdgo.testing.fstest.Fstest.MapFS_wrapper(_fsys);
    }
function _markTree(_n:Node):Void {
        _walkTree(_n, (""), function(_path:GoString, _n:Node):Void {
            _n._mark++;
        });
    }
function _checkMarks(_t:stdgo.testing.Testing.T_, _report:Bool):Void {
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if ((_n._mark != ((1 : GoInt))) && _report) {
                _t.errorf(((("node %s mark = %d; expected 1" : GoString))), Go.toInterface(_path), Go.toInterface(_n._mark));
            };
            _n._mark = ((0 : GoInt));
        });
    }
function _mark(_entry:DirEntry, _err:Error, _errors:Slice<Error>, _clear:Bool):Error {
        var _name:GoString = _entry.name();
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if (_n._name == _name) {
                _n._mark++;
            };
        });
        if (_err != null) {
            _errors = (_errors != null ? _errors.__append__(_err) : new Slice<stdgo.Error>(_err));
            if (_clear) {
                return ((null : stdgo.Error));
            };
            return _err;
        };
        return ((null : stdgo.Error));
    }
function testWalkDir(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpDir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(((("finding working dir:" : GoString)))), Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("entering temp dir:" : GoString)))), Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            var _fsys:FS = _makeTree(_t);
            var _errors:Slice<stdgo.Error> = new Slice<stdgo.Error>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : stdgo.Error))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            var _clear:Bool = true;
            var _markFn:(GoString, DirEntry, stdgo.Error) -> stdgo.Error = function(_path:GoString, _entry:DirEntry, _err:Error):Error {
                return _mark(_entry, _err, _errors, _clear);
            };
            _err = walkDir(_fsys, ((("." : GoString))), _markFn);
            if (_err != null) {
                _t.fatalf(((("no error expected, found: %s" : GoString))), Go.toInterface(_err));
            };
            if ((_errors != null ? _errors.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.fatalf(((("unexpected errors: %s" : GoString))), Go.toInterface(_errors));
            };
            _checkMarks(_t, true);
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
@:keep class T_globOnly_static_extension {

}
class T_globOnly_wrapper {
    public var __t__ : T_globOnly;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_readDirOnly_static_extension {

}
class T_readDirOnly_wrapper {
    public var __t__ : T_readDirOnly;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_readFileOnly_static_extension {

}
class T_readFileOnly_wrapper {
    public var __t__ : T_readFileOnly;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_statOnly_static_extension {

}
class T_statOnly_wrapper {
    public var __t__ : T_statOnly;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_subOnly_static_extension {

}
class T_subOnly_wrapper {
    public var __t__ : T_subOnly;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
