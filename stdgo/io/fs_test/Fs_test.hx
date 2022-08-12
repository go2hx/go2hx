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
var _isValidPathTests : Slice<stdgo.io.fs_test.Fs_test.T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(((((("." : GoString))) : GoString)), true) : T__struct_0)),
((new T__struct_0(((((("x" : GoString))) : GoString)), true) : T__struct_0)),
((new T__struct_0(((((("x/y" : GoString))) : GoString)), true) : T__struct_0)),
((new T__struct_0(((((("" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0((((((".." : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("/" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x/" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("/x" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x/y/" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("/x/y" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("./" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("./x" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x/." : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x/./y" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("../" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("../x" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x/.." : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x/../y" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0(((((("x//y" : GoString))) : GoString)), false) : T__struct_0)),
((new T__struct_0((("x\\" : GoString)), true) : T__struct_0)),
((new T__struct_0((("x\\y" : GoString)), true) : T__struct_0)),
((new T__struct_0((("x:y" : GoString)), true) : T__struct_0)),
((new T__struct_0((("\\x" : GoString)), true) : T__struct_0))) : Slice<T__struct_0>));
var _globTests : Slice<stdgo.io.fs_test.Fs_test.T__struct_1> = ((new Slice<T__struct_1>(((new T__struct_1(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), ((((("glob.go" : GoString))) : GoString)), ((((("glob.go" : GoString))) : GoString))) : T__struct_1)), ((new T__struct_1(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), ((((("gl?b.go" : GoString))) : GoString)), ((((("glob.go" : GoString))) : GoString))) : T__struct_1)), ((new T__struct_1(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), (("gl\\ob.go" : GoString)), ((((("glob.go" : GoString))) : GoString))) : T__struct_1)), ((new T__struct_1(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), ((((("*" : GoString))) : GoString)), ((((("glob.go" : GoString))) : GoString))) : T__struct_1)), ((new T__struct_1(stdgo.os.Os.dirFS((((((".." : GoString))) : GoString))), ((((("*/glob.go" : GoString))) : GoString)), ((((("fs/glob.go" : GoString))) : GoString))) : T__struct_1))) : Slice<T__struct_1>));
var _testFsys : stdgo.testing.fstest.Fstest.MapFS = Go.map(((((("hello.txt" : GoString))) : GoString)) => ((null : stdgo.testing.fstest.Fstest.MapFile)), ((((("sub/goodbye.txt" : GoString))) : GoString)) => ((null : stdgo.testing.fstest.Fstest.MapFile)));
var _tree : Ref<stdgo.io.fs_test.Fs_test.Node> = ((new Node(((((("testdata" : GoString))) : GoString)), ((new Slice<Node>(@:invalid_compositelit null, @:invalid_compositelit null, @:invalid_compositelit null, @:invalid_compositelit null) : Slice<Node>)), ((0 : GoInt))) : Node));
var _sysValue : GoInt = ((0 : GoInt));
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_globOnly_static_extension) class T_globOnly {
    @:embedded
    public var globFS : GlobFS = ((null : GlobFS));
    public function new(?globFS:GlobFS) {
        if (globFS != null) this.globFS = globFS;
    }
    @:embedded
    public function glob(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return globFS.glob(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_globOnly(globFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_readDirOnly_static_extension) class T_readDirOnly {
    @:embedded
    public var readDirFS : ReadDirFS = ((null : ReadDirFS));
    public function new(?readDirFS:ReadDirFS) {
        if (readDirFS != null) this.readDirFS = readDirFS;
    }
    @:embedded
    public function readDir(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return readDirFS.readDir(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readDirOnly(readDirFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_readFileOnly_static_extension) class T_readFileOnly {
    @:embedded
    public var readFileFS : ReadFileFS = ((null : ReadFileFS));
    public function new(?readFileFS:ReadFileFS) {
        if (readFileFS != null) this.readFileFS = readFileFS;
    }
    @:embedded
    public function readFile(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return readFileFS.readFile(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readFileOnly(readFileFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_openOnly_static_extension) class T_openOnly {
    @:embedded
    public var fs : FS = ((null : FS));
    public function new(?fs:FS) {
        if (fs != null) this.fs = fs;
    }
    @:embedded
    public function open(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return fs.open(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openOnly(fs);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_statOnly_static_extension) class T_statOnly {
    @:embedded
    public var statFS : StatFS = ((null : StatFS));
    public function new(?statFS:StatFS) {
        if (statFS != null) this.statFS = statFS;
    }
    @:embedded
    public function stat(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return statFS.stat(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statOnly(statFS);
    }
}
@:structInit @:using(stdgo.io.fs_test.Fs_test.T_subOnly_static_extension) class T_subOnly {
    @:embedded
    public var subFS : SubFS = ((null : SubFS));
    public function new(?subFS:SubFS) {
        if (subFS != null) this.subFS = subFS;
    }
    @:embedded
    public function sub(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return subFS.sub(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_subOnly(subFS);
    }
}
@:structInit class Node {
    public var _name : GoString = "";
    public var _entries : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>> = ((null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>));
    public var _mark : GoInt = 0;
    public function new(?_name:GoString, ?_entries:Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>, ?_mark:GoInt) {
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
    public var _name : GoString = "";
    public var _ok : Bool = false;
    public function string():String return "{" + Go.string(_name) + " " + Go.string(_ok) + "}";
    public function new(?_name:GoString, ?_ok:Bool, ?string) {
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
    public var _pattern : GoString = "";
    public var _result : GoString = "";
    public function string():String return "{" + Go.string(_fs) + " " + Go.string(_pattern) + " " + Go.string(_result) + "}";
    public function new(?_fs:FS, ?_pattern:GoString, ?_result:GoString, ?string) {
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
    public var _path : GoString = "";
    public var _wantMode : FileMode = new FileMode();
    public var _wantDir : Bool = false;
    public function string():String return "{" + Go.string(_path) + " " + Go.string(_wantMode) + " " + Go.string(_wantDir) + "}";
    public function new(?_path:GoString, ?_wantMode:FileMode, ?_wantDir:Bool, ?string) {
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
        var _root:GoString = ((((("/usr/local/go/bin" : GoString))) : GoString));
        var _fileSystem:FS = stdgo.os.Os.dirFS(_root);
        fs.walkDir(_fileSystem, ((((("." : GoString))) : GoString)), function(_path:GoString, _d:DirEntry, _err:Error):Error {
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            stdgo.fmt.Fmt.println(_path);
            return ((null : stdgo.Error));
        });
    }
function testValidPath(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _isValidPathTests) {
            var _ok:Bool = validPath(_tt._name);
            if (_ok != _tt._ok) {
                _t.errorf(((((("ValidPath(%q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._name), Go.toInterface(_ok), Go.toInterface(_tt._ok));
            };
        };
    }
function testGlob(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _globTests) {
            var __tmp__ = glob(_tt._fs, _tt._pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((((("Glob error for %q: %s" : GoString))) : GoString)), Go.toInterface(_tt._pattern), Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _tt._result)) {
                _t.errorf(((((("Glob(%#q) = %#v want %v" : GoString))) : GoString)), Go.toInterface(_tt._pattern), Go.toInterface(_matches), Go.toInterface(_tt._result));
            };
        };
        for (_1 => _pattern in ((new Slice<GoString>(((((("no_match" : GoString))) : GoString)), ((((("../*/no_match" : GoString))) : GoString)), (("\\*" : GoString))) : Slice<GoString>))) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), _pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((((("Glob error for %q: %s" : GoString))) : GoString)), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if ((_matches != null ? _matches.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.errorf(((((("Glob(%#q) = %#v want []" : GoString))) : GoString)), Go.toInterface(_pattern), Go.toInterface(_matches));
            };
        };
    }
function testGlobError(_t:stdgo.testing.Testing.T):Void {
        var _bad = ((new Slice<GoString>((("[]" : GoString)), (("nonexist/[]" : GoString))) : Slice<GoString>));
        for (_0 => _pattern in _bad) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), _pattern), _1:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != stdgo.path.Path.errBadPattern) {
                _t.errorf(((((("Glob(fs, %#q) returned err=%v, want path.ErrBadPattern" : GoString))) : GoString)), Go.toInterface(_pattern), Go.toInterface(_err));
            };
        };
    }
function testCVE202230630(_t:stdgo.testing.Testing.T):Void {
        var __tmp__ = glob(stdgo.os.Os.dirFS(((((("." : GoString))) : GoString))), ((((("/*" : GoString))) : GoString)) + stdgo.strings.Strings.repeat(((((("/" : GoString))) : GoString)), ((10001 : GoInt)))), _0:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != stdgo.path.Path.errBadPattern) {
            _t.fatalf(((((("Glob returned err=%v, want %v" : GoString))) : GoString)), Go.toInterface(_err), Go.toInterface(stdgo.path.Path.errBadPattern));
        };
    }
/**
    // contains reports whether vector contains the string s.
**/
function _contains(_vector:Slice<GoString>, _s:GoString):Bool {
        for (_0 => _elem in _vector) {
            if (_elem == _s) {
                return true;
            };
        };
        return false;
    }
function testGlobMethod(_t:stdgo.testing.Testing.T):Void {
        var _check = function(_desc:GoString, _names:Slice<GoString>, _err:Error):Void {
            _t.helper();
            if (((_err != null) || ((_names != null ? _names.length : ((0 : GoInt))) != ((1 : GoInt)))) || ((_names != null ? _names[((0 : GoInt))] : (("" : GoString))) != ((((("hello.txt" : GoString))) : GoString)))) {
                _t.errorf(((((("Glob(%s) = %v, %v, want %v, nil" : GoString))) : GoString)), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface(((new Slice<GoString>(((((("hello.txt" : GoString))) : GoString))) : Slice<GoString>))));
            };
        };
        var __tmp__ = glob({
            final __self__ = new stdgo.io.fs_test.Fs_test.T_globOnly_wrapper(((new T_globOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_globOnly)));
            __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return ((new T_globOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_globOnly)).glob(_name) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_globOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_globOnly)).open(_name) #else null #end;
            __self__;
        }, ((((("*.txt" : GoString))) : GoString))), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((((("readDirOnly" : GoString))) : GoString)), _names, _err);
        {
            var __tmp__ = glob({
                final __self__ = new stdgo.io.fs_test.Fs_test.T_openOnly_wrapper(((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)));
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)).open(_name) #else null #end;
                __self__;
            }, ((((("*.txt" : GoString))) : GoString)));
            _names = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((((("openOnly" : GoString))) : GoString)), _names, _err);
    }
function testReadDir(_t:stdgo.testing.Testing.T):Void {
        var _check = function(_desc:GoString, _dirs:Slice<DirEntry>, _err:Error):Void {
            _t.helper();
            if ((((_err != null) || ((_dirs != null ? _dirs.length : ((0 : GoInt))) != ((2 : GoInt)))) || ((_dirs != null ? _dirs[((0 : GoInt))] : ((null : DirEntry))).name() != ((((("hello.txt" : GoString))) : GoString)))) || ((_dirs != null ? _dirs[((1 : GoInt))] : ((null : DirEntry))).name() != ((((("sub" : GoString))) : GoString)))) {
                var _names:Slice<GoString> = ((null : Slice<GoString>));
                for (_0 => _d in _dirs) {
                    _names = (_names != null ? _names.__append__(_d.name()) : new Slice<GoString>(_d.name()));
                };
                _t.errorf(((((("ReadDir(%s) = %v, %v, want %v, nil" : GoString))) : GoString)), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface(((new Slice<GoString>(((((("hello.txt" : GoString))) : GoString)), ((((("sub" : GoString))) : GoString))) : Slice<GoString>))));
            };
        };
        var __tmp__ = readDir({
            final __self__ = new stdgo.io.fs_test.Fs_test.T_readDirOnly_wrapper(((new T_readDirOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_readDirOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_readDirOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_readDirOnly)).open(_name) #else null #end;
            __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return ((new T_readDirOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_readDirOnly)).readDir(_name) #else null #end;
            __self__;
        }, ((((("." : GoString))) : GoString))), _dirs:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((((("readDirOnly" : GoString))) : GoString)), _dirs, _err);
        {
            var __tmp__ = readDir({
                final __self__ = new stdgo.io.fs_test.Fs_test.T_openOnly_wrapper(((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)));
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)).open(_name) #else null #end;
                __self__;
            }, ((((("." : GoString))) : GoString)));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((((("openOnly" : GoString))) : GoString)), _dirs, _err);
        var __tmp__ = sub({
            final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
            __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
            __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
            __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
            __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
            __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
            __self__;
        }, ((((("." : GoString))) : GoString))), _sub:FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = readDir(_sub, ((((("." : GoString))) : GoString)));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((((("sub(.)" : GoString))) : GoString)), _dirs, _err);
    }
function testFileInfoToDirEntry(_t:stdgo.testing.Testing.T):Void {
        var _testFs:stdgo.testing.fstest.Fstest.MapFS = Go.map(((((("notadir.txt" : GoString))) : GoString)) => ((null : stdgo.testing.fstest.Fstest.MapFile)), ((((("adir" : GoString))) : GoString)) => ((null : stdgo.testing.fstest.Fstest.MapFile)));
        var _tests = ((new Slice<T__struct_2>((({ _path : ((((("notadir.txt" : GoString))) : GoString)), _wantMode : ((0 : FileMode)), _wantDir : false } : T__struct_2)), (({ _path : ((((("adir" : GoString))) : GoString)), _wantMode : (("2147483648" : FileMode)), _wantDir : true } : T__struct_2))) : Slice<T__struct_2>));
        for (_0 => _test in _tests) {
            var _test:stdgo.io.fs_test.Fs_test.T__struct_2 = (_test == null ? null : _test.__copy__());
            _t.run(_test._path, function(_t:stdgo.testing.Testing.T):Void {
                var __tmp__ = stat({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFs);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFs.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFs.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFs.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFs.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFs.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFs.sub(_name) #else null #end;
                    __self__;
                }, _test._path), _fi:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var _dirEntry:DirEntry = fileInfoToDirEntry(_fi);
                {
                    var _g:FileMode = _dirEntry.type(), _w:FileMode = _test._wantMode;
                    if (_g != _w) {
                        _t.errorf(((((("FileMode mismatch: got=%v, want=%v" : GoString))) : GoString)), Go.toInterface({
                            final __self__ = new FileMode_wrapper(_g);
                            __self__.isDir = #if !macro function():Bool return _g.isDir() #else null #end;
                            __self__.isRegular = #if !macro function():Bool return _g.isRegular() #else null #end;
                            __self__.perm = #if !macro function():FileMode return _g.perm() #else null #end;
                            __self__.string = #if !macro function():GoString return _g.string() #else null #end;
                            __self__.type = #if !macro function():FileMode return _g.type() #else null #end;
                            __self__;
                        }), Go.toInterface({
                            final __self__ = new FileMode_wrapper(_w);
                            __self__.isDir = #if !macro function():Bool return _w.isDir() #else null #end;
                            __self__.isRegular = #if !macro function():Bool return _w.isRegular() #else null #end;
                            __self__.perm = #if !macro function():FileMode return _w.perm() #else null #end;
                            __self__.string = #if !macro function():GoString return _w.string() #else null #end;
                            __self__.type = #if !macro function():FileMode return _w.type() #else null #end;
                            __self__;
                        }));
                    };
                };
                {
                    var _g:GoString = _dirEntry.name(), _w:GoString = _test._path;
                    if (_g != _w) {
                        _t.errorf(((((("Name mismatch: got=%v, want=%v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                {
                    var _g:Bool = _dirEntry.isDir(), _w:Bool = _test._wantDir;
                    if (_g != _w) {
                        _t.errorf(((((("IsDir mismatch: got=%v, want=%v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            });
        };
    }
function testReadFile(_t:stdgo.testing.Testing.T):Void {
        var __tmp__ = readFile({
            final __self__ = new stdgo.io.fs_test.Fs_test.T_readFileOnly_wrapper(((new T_readFileOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_readFileOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_readFileOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_readFileOnly)).open(_name) #else null #end;
            __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new T_readFileOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_readFileOnly)).readFile(_name) #else null #end;
            __self__;
        }, ((((("hello.txt" : GoString))) : GoString))), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_data : GoString)) != ((((("hello, world" : GoString))) : GoString))) || (_err != null)) {
            _t.fatalf((("ReadFile(readFileOnly, \"hello.txt\") = %q, %v, want %q, nil" : GoString)), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((((("hello, world" : GoString))) : GoString))));
        };
        {
            var __tmp__ = readFile({
                final __self__ = new stdgo.io.fs_test.Fs_test.T_openOnly_wrapper(((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)));
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)).open(_name) #else null #end;
                __self__;
            }, ((((("hello.txt" : GoString))) : GoString)));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_data : GoString)) != ((((("hello, world" : GoString))) : GoString))) || (_err != null)) {
            _t.fatalf((("ReadFile(openOnly, \"hello.txt\") = %q, %v, want %q, nil" : GoString)), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((((("hello, world" : GoString))) : GoString))));
        };
        var __tmp__ = sub({
            final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
            __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
            __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
            __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
            __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
            __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
            __self__;
        }, ((((("." : GoString))) : GoString))), _sub:FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = readFile(_sub, ((((("hello.txt" : GoString))) : GoString)));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_data : GoString)) != ((((("hello, world" : GoString))) : GoString))) || (_err != null)) {
            _t.fatalf((("ReadFile(sub(.), \"hello.txt\") = %q, %v, want %q, nil" : GoString)), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((((("hello, world" : GoString))) : GoString))));
        };
    }
function testStat(_t:stdgo.testing.Testing.T):Void {
        var _check:(GoString, FileInfo, stdgo.Error) -> Void = function(_desc:GoString, _info:FileInfo, _err:Error):Void {
            _t.helper();
            if (((_err != null) || (_info == null)) || (_info.mode() != ((302 : FileMode)))) {
                var _infoStr:GoString = ((((("<nil>" : GoString))) : GoString));
                if (_info != null) {
                    _infoStr = stdgo.fmt.Fmt.sprintf(((((("FileInfo(Mode: %#o)" : GoString))) : GoString)), Go.toInterface({
                        final __self__ = new FileMode_wrapper(_info.mode());
                        __self__.isDir = #if !macro function():Bool return _info.mode().isDir() #else null #end;
                        __self__.isRegular = #if !macro function():Bool return _info.mode().isRegular() #else null #end;
                        __self__.perm = #if !macro function():FileMode return _info.mode().perm() #else null #end;
                        __self__.string = #if !macro function():GoString return _info.mode().string() #else null #end;
                        __self__.type = #if !macro function():FileMode return _info.mode().type() #else null #end;
                        __self__;
                    }));
                };
                _t.fatalf(((((("Stat(%s) = %v, %v, want Mode:0456, nil" : GoString))) : GoString)), Go.toInterface(_desc), Go.toInterface(_infoStr), Go.toInterface(_err));
            };
        };
        var __tmp__ = stat({
            final __self__ = new stdgo.io.fs_test.Fs_test.T_statOnly_wrapper(((new T_statOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_statOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_statOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_statOnly)).open(_name) #else null #end;
            __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return ((new T_statOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_statOnly)).stat(_name) #else null #end;
            __self__;
        }, ((((("hello.txt" : GoString))) : GoString))), _info:FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((((("statOnly" : GoString))) : GoString)), _info, _err);
        {
            var __tmp__ = stat({
                final __self__ = new stdgo.io.fs_test.Fs_test.T_openOnly_wrapper(((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)));
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)).open(_name) #else null #end;
                __self__;
            }, ((((("hello.txt" : GoString))) : GoString)));
            _info = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((((("openOnly" : GoString))) : GoString)), _info, _err);
    }
function testSub(_t:stdgo.testing.Testing.T):Void {
        var _check:(GoString, FS, stdgo.Error) -> Void = function(_desc:GoString, _sub:FS, _err:Error):Void {
            _t.helper();
            if (_err != null) {
                _t.errorf(((((("Sub(sub): %v" : GoString))) : GoString)), Go.toInterface(_err));
                return;
            };
            var __tmp__ = readFile(_sub, ((((("goodbye.txt" : GoString))) : GoString))), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_data : GoString)) != ((((("goodbye, world" : GoString))) : GoString))) || (_err != null)) {
                _t.errorf((("ReadFile(%s, \"goodbye.txt\" = %q, %v, want %q, nil" : GoString)), Go.toInterface(_desc), Go.toInterface(((_data : GoString))), Go.toInterface(_err), Go.toInterface(((((("goodbye, world" : GoString))) : GoString))));
            };
            var __tmp__ = readDir(_sub, ((((("." : GoString))) : GoString))), _dirs:Slice<DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_dirs != null ? _dirs.length : ((0 : GoInt))) != ((1 : GoInt)))) || ((_dirs != null ? _dirs[((0 : GoInt))] : ((null : DirEntry))).name() != ((((("goodbye.txt" : GoString))) : GoString)))) {
                var _names:Slice<GoString> = ((null : Slice<GoString>));
                for (_0 => _d in _dirs) {
                    _names = (_names != null ? _names.__append__(_d.name()) : new Slice<GoString>(_d.name()));
                };
                _t.errorf((("ReadDir(%s, \".\") = %v, %v, want %v, nil" : GoString)), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface(((new Slice<GoString>(((((("goodbye.txt" : GoString))) : GoString))) : Slice<GoString>))));
            };
        };
        var __tmp__ = sub({
            final __self__ = new stdgo.io.fs_test.Fs_test.T_subOnly_wrapper(((new T_subOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_subOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_subOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_subOnly)).open(_name) #else null #end;
            __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return ((new T_subOnly({
                final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                __self__;
            }) : T_subOnly)).sub(_name) #else null #end;
            __self__;
        }, ((((("sub" : GoString))) : GoString))), _sub:FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(((((("subOnly" : GoString))) : GoString)), _sub, _err);
        {
            var __tmp__ = sub({
                final __self__ = new stdgo.io.fs_test.Fs_test.T_openOnly_wrapper(((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)));
                __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return ((new T_openOnly({
                    final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_testFsys);
                    __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _testFsys.glob(_name) #else null #end;
                    __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _testFsys.open(_name) #else null #end;
                    __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _testFsys.readDir(_name) #else null #end;
                    __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _testFsys.readFile(_name) #else null #end;
                    __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _testFsys.stat(_name) #else null #end;
                    __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _testFsys.sub(_name) #else null #end;
                    __self__;
                }) : T_openOnly)).open(_name) #else null #end;
                __self__;
            }, ((((("sub" : GoString))) : GoString)));
            _sub = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(((((("openOnly" : GoString))) : GoString)), _sub, _err);
        {
            var __tmp__ = _sub.open(((((("nonexist" : GoString))) : GoString)));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(Go.toInterface(((((("Open(nonexist): succeeded" : GoString))) : GoString))));
        };
        var __tmp__ = try {
            { value : ((((_err.__underlying__().value : Dynamic)) : PathError)), ok : true };
        } catch(_) {
            { value : ((null : PathError)), ok : false };
        }, _pe = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(((((("Open(nonexist): error is %T, want *PathError" : GoString))) : GoString)), Go.toInterface(_err));
        };
        if (_pe.path != ((((("nonexist" : GoString))) : GoString))) {
            _t.fatalf(((((("Open(nonexist): err.Path = %q, want %q" : GoString))) : GoString)), Go.toInterface(_pe.path), Go.toInterface(((((("nonexist" : GoString))) : GoString))));
        };
    }
function _walkTree(_n:Node, _path:GoString, _f:(_path:GoString, _n:Node) -> Void):Void {
        _f(_path, _n);
        for (_0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.Path.join(_path, _e._name), _f);
        };
    }
function _makeTree(_t:stdgo.testing.Testing.T):FS {
        var _fsys:stdgo.testing.fstest.Fstest.MapFS = new stdgo.GoMap.GoObjectMap<GoString, Ref<stdgo.testing.fstest.Fstest.MapFile>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.named("stdgo.testing.fstest.Fstest.MapFS", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.testing.fstest.Fstest.MapFile", [], stdgo.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("FileMode", [], stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }, { name : "modTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [], stdgo.reflect.Reflect.GoType.invalidType)) }])) }, { name : "sys", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])))))));
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if (_n._entries == null) {
                if (_fsys != null) _fsys[_path] = ((new stdgo.testing.fstest.Fstest.MapFile() : stdgo.testing.fstest.Fstest.MapFile));
            } else {
                if (_fsys != null) _fsys[_path] = (({ mode : (("2147483648" : FileMode)) } : stdgo.testing.fstest.Fstest.MapFile));
            };
        });
        return {
            final __self__ = new stdgo.testing.fstest.Fstest.MapFS_wrapper(_fsys);
            __self__.glob = #if !macro function(_name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_name) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
            __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
            __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
            __self__.stat = #if !macro function(_name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
            __self__.sub = #if !macro function(_name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return _fsys.sub(_name) #else null #end;
            __self__;
        };
    }
function _markTree(_n:Node):Void {
        _walkTree(_n, ((((("" : GoString))) : GoString)), function(_path:GoString, _n:Node):Void {
            _n._mark++;
        });
    }
function _checkMarks(_t:stdgo.testing.Testing.T, _report:Bool):Void {
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if ((_n._mark != ((1 : GoInt))) && _report) {
                _t.errorf(((((("node %s mark = %d; expected 1" : GoString))) : GoString)), Go.toInterface(_path), Go.toInterface(_n._mark));
            };
            _n._mark = ((0 : GoInt));
        });
    }
/**
    // Assumes that each node name is unique. Good enough for a test.
    // If clear is true, any incoming error is cleared before return. The errors
    // are always accumulated, though.
**/
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
function testWalkDir(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpDir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(((((("finding working dir:" : GoString))) : GoString))), Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(((((("entering temp dir:" : GoString))) : GoString))), Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            var _fsys:FS = _makeTree(_t);
            var _errors = new Slice<stdgo.Error>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : stdgo.Error))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            var _clear:Bool = true;
            var _markFn:(GoString, DirEntry, stdgo.Error) -> stdgo.Error = function(_path:GoString, _entry:DirEntry, _err:Error):Error {
                return _mark(_entry, _err, _errors, _clear);
            };
            _err = walkDir(_fsys, ((((("." : GoString))) : GoString)), _markFn);
            if (_err != null) {
                _t.fatalf(((((("no error expected, found: %s" : GoString))) : GoString)), Go.toInterface(_err));
            };
            if ((_errors != null ? _errors.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.fatalf(((((("unexpected errors: %s" : GoString))) : GoString)), Go.toInterface(_errors));
            };
            _checkMarks(_t, true);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testIssue51617(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:GoString = _t.tempDir();
            for (_0 => _sub in ((new Slice<GoString>(((((("a" : GoString))) : GoString)), stdgo.path.filepath.Filepath.join(((((("a" : GoString))) : GoString)), ((((("bad" : GoString))) : GoString))), stdgo.path.filepath.Filepath.join(((((("a" : GoString))) : GoString)), ((((("next" : GoString))) : GoString)))) : Slice<GoString>))) {
                {
                    var _err:stdgo.Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_dir, _sub), ((493 : FileMode)));
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
            var _bad:GoString = stdgo.path.filepath.Filepath.join(_dir, ((((("a" : GoString))) : GoString)), ((((("bad" : GoString))) : GoString)));
            {
                var _err:stdgo.Error = stdgo.os.Os.chmod(_bad, ((0 : FileMode)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = ((448 : FileMode));
                __deferstack__.unshift(() -> stdgo.os.Os.chmod(_a0, _a1));
            };
            var _saw:Slice<GoString> = ((null : Slice<GoString>));
            var _err:stdgo.Error = walkDir(stdgo.os.Os.dirFS(_dir), ((((("." : GoString))) : GoString)), function(_path:GoString, _d:DirEntry, _err:Error):Error {
                if (_err != null) {
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                if (_d.isDir()) {
                    _saw = (_saw != null ? _saw.__append__(_path) : new Slice<GoString>(_path));
                };
                return ((null : stdgo.Error));
            });
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _want = ((new Slice<GoString>(((((("." : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("a/bad" : GoString))) : GoString)), ((((("a/next" : GoString))) : GoString))) : Slice<GoString>));
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_saw), Go.toInterface(_want))) {
                _t.errorf(((((("got directories %v, want %v" : GoString))) : GoString)), Go.toInterface(_saw), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
@:keep class T_globOnly_static_extension {
    @:keep
    static public function open( _:T_globOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public static function glob( __self__:T_globOnly, _name:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return __self__.glob(_name);
}
class T_globOnly_wrapper {
    @:keep
    public var open : GoString -> { var _0 : File; var _1 : Error; } = null;
    @:embedded
    public var glob : GoString -> { var _0 : Slice<GoString>; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_globOnly;
}
@:keep class T_readDirOnly_static_extension {
    @:keep
    static public function open( _:T_readDirOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public static function readDir( __self__:T_readDirOnly, _name:GoString):{ var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_name);
}
class T_readDirOnly_wrapper {
    @:keep
    public var open : GoString -> { var _0 : File; var _1 : Error; } = null;
    @:embedded
    public var readDir : GoString -> { var _0 : Slice<DirEntry>; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_readDirOnly;
}
@:keep class T_readFileOnly_static_extension {
    @:keep
    static public function open( _:T_readFileOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public static function readFile( __self__:T_readFileOnly, _name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__.readFile(_name);
}
class T_readFileOnly_wrapper {
    @:keep
    public var open : GoString -> { var _0 : File; var _1 : Error; } = null;
    @:embedded
    public var readFile : GoString -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_readFileOnly;
}
@:keep class T_openOnly_static_extension {
    @:embedded
    public static function open( __self__:T_openOnly, _name:GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.open(_name);
}
class T_openOnly_wrapper {
    @:embedded
    public var open : GoString -> { var _0 : File; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_openOnly;
}
@:keep class T_statOnly_static_extension {
    @:keep
    static public function open( _:T_statOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public static function stat( __self__:T_statOnly, _name:GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.stat(_name);
}
class T_statOnly_wrapper {
    @:keep
    public var open : GoString -> { var _0 : File; var _1 : Error; } = null;
    @:embedded
    public var stat : GoString -> { var _0 : FileInfo; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_statOnly;
}
@:keep class T_subOnly_static_extension {
    @:keep
    static public function open( _:T_subOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : ((null : File)), _1 : errNotExist };
    }
    @:embedded
    public static function sub( __self__:T_subOnly, _name:GoString):{ var _0 : FS; var _1 : stdgo.Error; } return __self__.sub(_name);
}
class T_subOnly_wrapper {
    @:keep
    public var open : GoString -> { var _0 : File; var _1 : Error; } = null;
    @:embedded
    public var sub : GoString -> { var _0 : FS; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_subOnly;
}
