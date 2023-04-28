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
import stdgo.io.fs.Fs;
/**
    
    
    
**/
private var _isValidPathTests = (new Slice<T__struct_0>(
23,
23,
({ _name : ("." : GoString), _ok : true } : T__struct_0),
({ _name : ("x" : GoString), _ok : true } : T__struct_0),
({ _name : ("x/y" : GoString), _ok : true } : T__struct_0),
({ _name : Go.str(), _ok : false } : T__struct_0),
({ _name : (".." : GoString), _ok : false } : T__struct_0),
({ _name : ("/" : GoString), _ok : false } : T__struct_0),
({ _name : ("x/" : GoString), _ok : false } : T__struct_0),
({ _name : ("/x" : GoString), _ok : false } : T__struct_0),
({ _name : ("x/y/" : GoString), _ok : false } : T__struct_0),
({ _name : ("/x/y" : GoString), _ok : false } : T__struct_0),
({ _name : ("./" : GoString), _ok : false } : T__struct_0),
({ _name : ("./x" : GoString), _ok : false } : T__struct_0),
({ _name : ("x/." : GoString), _ok : false } : T__struct_0),
({ _name : ("x/./y" : GoString), _ok : false } : T__struct_0),
({ _name : ("../" : GoString), _ok : false } : T__struct_0),
({ _name : ("../x" : GoString), _ok : false } : T__struct_0),
({ _name : ("x/.." : GoString), _ok : false } : T__struct_0),
({ _name : ("x/../y" : GoString), _ok : false } : T__struct_0),
({ _name : ("x//y" : GoString), _ok : false } : T__struct_0),
({ _name : ("x\\" : GoString), _ok : true } : T__struct_0),
({ _name : ("x\\y" : GoString), _ok : true } : T__struct_0),
({ _name : ("x:y" : GoString), _ok : true } : T__struct_0),
({ _name : ("\\x" : GoString), _ok : true } : T__struct_0)) : Slice<T__struct_0>);
/**
    
    
    
**/
private var _globTests = (new Slice<T__struct_1>(5, 5, ({ _fs : stdgo.os.Os.dirFS(("." : GoString)), _pattern : ("glob.go" : GoString), _result : ("glob.go" : GoString) } : T__struct_1), ({ _fs : stdgo.os.Os.dirFS(("." : GoString)), _pattern : ("gl?b.go" : GoString), _result : ("glob.go" : GoString) } : T__struct_1), ({ _fs : stdgo.os.Os.dirFS(("." : GoString)), _pattern : ("gl\\ob.go" : GoString), _result : ("glob.go" : GoString) } : T__struct_1), ({ _fs : stdgo.os.Os.dirFS(("." : GoString)), _pattern : ("*" : GoString), _result : ("glob.go" : GoString) } : T__struct_1), ({ _fs : stdgo.os.Os.dirFS((".." : GoString)), _pattern : ("*/glob.go" : GoString), _result : ("fs/glob.go" : GoString) } : T__struct_1)) : Slice<T__struct_1>);
/**
    
    
    
**/
private var _testFsys = ({
        final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.testing.fstest.Fstest.MapFile>>();
        x.__defaultValue__ = () -> (null : Ref<stdgo.testing.fstest.Fstest.MapFile>);
        @:mergeBlock {
            x.set(("hello.txt" : GoString), ({ data : (("hello, world" : GoString) : Slice<GoByte>), mode : (302u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
            x.set(("sub/goodbye.txt" : GoString), ({ data : (("goodbye, world" : GoString) : Slice<GoByte>), mode : (302u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
        };
        x;
    } : GoMap<GoString, Ref<stdgo.testing.fstest.Fstest.MapFile>>);
/**
    
    
    
**/
private var _tree = (Go.setRef((new Node(("testdata" : GoString), (new Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>(4, 4, (new stdgo.io.fs_test.Fs_test.Node(("a" : GoString), (null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("b" : GoString), (new Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>(0, 0) : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("c" : GoString), (null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("d" : GoString), (new Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>(3, 3, (new stdgo.io.fs_test.Fs_test.Node(("x" : GoString), (null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("y" : GoString), (new Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>(0, 0) : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("z" : GoString), (new Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>(2, 2, (new stdgo.io.fs_test.Fs_test.Node(("u" : GoString), (null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("v" : GoString), (null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node)) : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node)) : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : stdgo.io.fs_test.Fs_test.Node)) : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : GoInt)) : Node)) : Ref<stdgo.io.fs_test.Fs_test.Node>);
/**
    
    
    
**/
private var _sysValue : GoInt = (0 : GoInt);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_globOnly_static_extension) class T_globOnly {
    @:embedded
    public var globFS : stdgo.io.fs.Fs.GlobFS = (null : stdgo.io.fs.Fs.GlobFS);
    public function new(?globFS:stdgo.io.fs.Fs.GlobFS) {
        if (globFS != null) this.globFS = globFS;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function glob(_name:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } return globFS.glob(_name);
    public function __copy__() {
        return new T_globOnly(globFS);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_readDirOnly_static_extension) class T_readDirOnly {
    @:embedded
    public var readDirFS : stdgo.io.fs.Fs.ReadDirFS = (null : stdgo.io.fs.Fs.ReadDirFS);
    public function new(?readDirFS:stdgo.io.fs.Fs.ReadDirFS) {
        if (readDirFS != null) this.readDirFS = readDirFS;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function readDir(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } return readDirFS.readDir(_name);
    public function __copy__() {
        return new T_readDirOnly(readDirFS);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_readFileOnly_static_extension) class T_readFileOnly {
    @:embedded
    public var readFileFS : stdgo.io.fs.Fs.ReadFileFS = (null : stdgo.io.fs.Fs.ReadFileFS);
    public function new(?readFileFS:stdgo.io.fs.Fs.ReadFileFS) {
        if (readFileFS != null) this.readFileFS = readFileFS;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function readFile(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return readFileFS.readFile(_name);
    public function __copy__() {
        return new T_readFileOnly(readFileFS);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_openOnly_static_extension) class T_openOnly {
    @:embedded
    public var fs : stdgo.io.fs.Fs.FS = (null : stdgo.io.fs.Fs.FS);
    public function new(?fs:stdgo.io.fs.Fs.FS) {
        if (fs != null) this.fs = fs;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } return fs.open(_name);
    public function __copy__() {
        return new T_openOnly(fs);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_statOnly_static_extension) class T_statOnly {
    @:embedded
    public var statFS : stdgo.io.fs.Fs.StatFS = (null : stdgo.io.fs.Fs.StatFS);
    public function new(?statFS:stdgo.io.fs.Fs.StatFS) {
        if (statFS != null) this.statFS = statFS;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function stat(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return statFS.stat(_name);
    public function __copy__() {
        return new T_statOnly(statFS);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_subOnly_static_extension) class T_subOnly {
    @:embedded
    public var subFS : stdgo.io.fs.Fs.SubFS = (null : stdgo.io.fs.Fs.SubFS);
    public function new(?subFS:stdgo.io.fs.Fs.SubFS) {
        if (subFS != null) this.subFS = subFS;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function sub(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : Error; } return subFS.sub(_name);
    public function __copy__() {
        return new T_subOnly(subFS);
    }
}
/**
    
    
    
**/
@:structInit class Node {
    public var _name : GoString = "";
    public var _entries : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>> = (null : Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>);
    public var _mark : GoInt = 0;
    public function new(?_name:GoString, ?_entries:Slice<Ref<stdgo.io.fs_test.Fs_test.Node>>, ?_mark:GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _name : GoString;
    public var _ok : Bool;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _fs : stdgo.io.fs.Fs.FS;
    public var _pattern : GoString;
    public var _result : GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _path : GoString;
    public var _wantMode : stdgo.io.fs.Fs.FileMode;
    public var _wantDir : Bool;
};
function exampleWalkDir():Void {
        var _root:GoString = ("/usr/local/go/bin" : GoString);
        var _fileSystem:stdgo.io.fs.Fs.FS = stdgo.os.Os.dirFS(_root);
        fs.walkDir(_fileSystem, ("." : GoString), function(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:Error):Error {
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            stdgo.fmt.Fmt.println(Go.toInterface(_path));
            return (null : Error);
        });
    }
function testValidPath(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _isValidPathTests) {
            var _ok:Bool = validPath(_tt._name);
            if (_ok != (_tt._ok)) {
                _t.errorf(("ValidPath(%q) = %v, want %v" : GoString), Go.toInterface(_tt._name), Go.toInterface(_ok), Go.toInterface(_tt._ok));
            };
        };
    }
function testGlob(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _globTests) {
            var __tmp__ = glob(_tt._fs, _tt._pattern), _matches:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : GoString), Go.toInterface(_tt._pattern), Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _tt._result)) {
                _t.errorf(("Glob(%#q) = %#v want %v" : GoString), Go.toInterface(_tt._pattern), Go.toInterface(_matches), Go.toInterface(_tt._result));
            };
        };
        for (__1 => _pattern in (new Slice<GoString>(3, 3, ("no_match" : GoString), ("../*/no_match" : GoString), ("\\*" : GoString)) : Slice<GoString>)) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(("." : GoString)), _pattern), _matches:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : GoString), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : GoString), Go.toInterface(_pattern), Go.toInterface(_matches));
            };
        };
    }
function testGlobError(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _bad = (new Slice<GoString>(2, 2, ("[]" : GoString), ("nonexist/[]" : GoString)) : Slice<GoString>);
        for (__0 => _pattern in _bad) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(("." : GoString)), _pattern), __1:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(stdgo.path.Path.errBadPattern))) {
                _t.errorf(("Glob(fs, %#q) returned err=%v, want path.ErrBadPattern" : GoString), Go.toInterface(_pattern), Go.toInterface(_err));
            };
        };
    }
function testCVE202230630(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = glob(stdgo.os.Os.dirFS(("." : GoString)), ("/*" : GoString) + stdgo.strings.Strings.repeat(("/" : GoString), (10001 : GoInt))), __0:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (Go.toInterface(_err) != (Go.toInterface(stdgo.path.Path.errBadPattern))) {
            _t.fatalf(("Glob returned err=%v, want %v" : GoString), Go.toInterface(_err), Go.toInterface(stdgo.path.Path.errBadPattern));
        };
    }
/**
    // contains reports whether vector contains the string s.
**/
private function _contains(_vector:Slice<GoString>, _s:GoString):Bool {
        for (__0 => _elem in _vector) {
            if (_elem == (_s)) {
                return true;
            };
        };
        return false;
    }
function testGlobMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _check = function(_desc:GoString, _names:Slice<GoString>, _err:Error):Void {
            _t.helper();
            if (((_err != null) || (_names.length != (1 : GoInt))) || (_names[(0 : GoInt)] != ("hello.txt" : GoString))) {
                _t.errorf(("Glob(%s) = %v, %v, want %v, nil" : GoString), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface((new Slice<GoString>(1, 1, ("hello.txt" : GoString)) : Slice<GoString>)));
            };
        };
        var __tmp__ = glob(Go.asInterface((new T_globOnly(Go.asInterface(_testFsys)) : T_globOnly)), ("*.txt" : GoString)), _names:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        _check(("readDirOnly" : GoString), _names, _err);
        {
            var __tmp__ = glob(Go.asInterface((new T_openOnly(Go.asInterface(_testFsys)) : T_openOnly)), ("*.txt" : GoString));
            _names = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : GoString), _names, _err);
    }
function testReadDir(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _check = function(_desc:GoString, _dirs:Slice<DirEntry>, _err:Error):Void {
            _t.helper();
            if ((((_err != null) || (_dirs.length != (2 : GoInt))) || (_dirs[(0 : GoInt)].name() != ("hello.txt" : GoString))) || (_dirs[(1 : GoInt)].name() != ("sub" : GoString))) {
                var _names:Slice<GoString> = (null : Slice<GoString>);
                for (__0 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()));
                };
                _t.errorf(("ReadDir(%s) = %v, %v, want %v, nil" : GoString), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface((new Slice<GoString>(2, 2, ("hello.txt" : GoString), ("sub" : GoString)) : Slice<GoString>)));
            };
        };
        var __tmp__ = readDir(Go.asInterface((new T_readDirOnly(Go.asInterface(_testFsys)) : T_readDirOnly)), ("." : GoString)), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
        _check(("readDirOnly" : GoString), _dirs, _err);
        {
            var __tmp__ = readDir(Go.asInterface((new T_openOnly(Go.asInterface(_testFsys)) : T_openOnly)), ("." : GoString));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : GoString), _dirs, _err);
        var __tmp__ = sub(Go.asInterface(_testFsys), ("." : GoString)), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = readDir(_sub, ("." : GoString));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("sub(.)" : GoString), _dirs, _err);
    }
function testFileInfoToDirEntry(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testFs:stdgo.testing.fstest.Fstest.MapFS = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.testing.fstest.Fstest.MapFile>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.testing.fstest.Fstest.MapFile>);
            @:mergeBlock {
                x.set(("notadir.txt" : GoString), ({ data : (("hello, world" : GoString) : Slice<GoByte>), mode : (0u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
                x.set(("adir" : GoString), ({ data : (null : Slice<GoUInt8>), mode : (-2147483648u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : Go.toInterface(Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
            };
            x;
        } : GoMap<GoString, Ref<stdgo.testing.fstest.Fstest.MapFile>>);
        var _tests = (new Slice<T__struct_2>(2, 2, ({ _path : ("notadir.txt" : GoString), _wantMode : (0u32 : stdgo.io.fs.Fs.FileMode), _wantDir : false } : T__struct_2), ({ _path : ("adir" : GoString), _wantMode : (-2147483648u32 : stdgo.io.fs.Fs.FileMode), _wantDir : true } : T__struct_2)) : Slice<T__struct_2>);
        for (__0 => _test in _tests) {
            var _test:T__struct_2 = {
                final x = _test;
                ({ _path : x._path, _wantMode : x._wantMode, _wantDir : x._wantDir } : T__struct_2);
            };
            _t.run(_test._path, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var __tmp__ = stat(Go.asInterface(_testFs), _test._path), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var _dirEntry:stdgo.io.fs.Fs.DirEntry = fileInfoToDirEntry(_fi);
                {
                    var __0:stdgo.io.fs.Fs.FileMode = _dirEntry.type(), __1:stdgo.io.fs.Fs.FileMode = _test._wantMode, _w:stdgo.io.fs.Fs.FileMode = __1, _g:stdgo.io.fs.Fs.FileMode = __0;
                    if (_g != (_w)) {
                        _t.errorf(("FileMode mismatch: got=%v, want=%v" : GoString), Go.toInterface(Go.asInterface(_g)), Go.toInterface(Go.asInterface(_w)));
                    };
                };
                {
                    var __0:GoString = _dirEntry.name(), __1:GoString = _test._path, _w:GoString = __1, _g:GoString = __0;
                    if (_g != (_w)) {
                        _t.errorf(("Name mismatch: got=%v, want=%v" : GoString), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                {
                    var __0:Bool = _dirEntry.isDir(), __1:Bool = _test._wantDir, _w:Bool = __1, _g:Bool = __0;
                    if (_g != (_w)) {
                        _t.errorf(("IsDir mismatch: got=%v, want=%v" : GoString), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            });
        };
    }
function testReadFile(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = readFile(Go.asInterface((new T_readFileOnly(Go.asInterface(_testFsys)) : T_readFileOnly)), ("hello.txt" : GoString)), _data:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (((_data : GoString) != ("hello, world" : GoString)) || (_err != null)) {
            _t.fatalf(("ReadFile(readFileOnly, \"hello.txt\") = %q, %v, want %q, nil" : GoString), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(("hello, world" : GoString)));
        };
        {
            var __tmp__ = readFile(Go.asInterface((new T_openOnly(Go.asInterface(_testFsys)) : T_openOnly)), ("hello.txt" : GoString));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_data : GoString) != ("hello, world" : GoString)) || (_err != null)) {
            _t.fatalf(("ReadFile(openOnly, \"hello.txt\") = %q, %v, want %q, nil" : GoString), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(("hello, world" : GoString)));
        };
        var __tmp__ = sub(Go.asInterface(_testFsys), ("." : GoString)), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = readFile(_sub, ("hello.txt" : GoString));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_data : GoString) != ("hello, world" : GoString)) || (_err != null)) {
            _t.fatalf(("ReadFile(sub(.), \"hello.txt\") = %q, %v, want %q, nil" : GoString), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(("hello, world" : GoString)));
        };
    }
function testStat(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _check:(GoString, stdgo.io.fs.Fs.FileInfo, Error) -> Void = function(_desc:GoString, _info:FileInfo, _err:Error):Void {
            _t.helper();
            if (((_err != null) || (_info == null)) || (_info.mode() != (302u32 : stdgo.io.fs.Fs.FileMode))) {
                var _infoStr:GoString = ("<nil>" : GoString);
                if (_info != null) {
                    _infoStr = stdgo.fmt.Fmt.sprintf(("FileInfo(Mode: %#o)" : GoString), Go.toInterface(Go.asInterface(_info.mode())));
                };
                _t.fatalf(("Stat(%s) = %v, %v, want Mode:0456, nil" : GoString), Go.toInterface(_desc), Go.toInterface(_infoStr), Go.toInterface(_err));
            };
        };
        var __tmp__ = stat(Go.asInterface((new T_statOnly(Go.asInterface(_testFsys)) : T_statOnly)), ("hello.txt" : GoString)), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
        _check(("statOnly" : GoString), _info, _err);
        {
            var __tmp__ = stat(Go.asInterface((new T_openOnly(Go.asInterface(_testFsys)) : T_openOnly)), ("hello.txt" : GoString));
            _info = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : GoString), _info, _err);
    }
function testSub(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _check:(GoString, stdgo.io.fs.Fs.FS, Error) -> Void = function(_desc:GoString, _sub:FS, _err:Error):Void {
            _t.helper();
            if (_err != null) {
                _t.errorf(("Sub(sub): %v" : GoString), Go.toInterface(_err));
                return;
            };
            var __tmp__ = readFile(_sub, ("goodbye.txt" : GoString)), _data:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (((_data : GoString) != ("goodbye, world" : GoString)) || (_err != null)) {
                _t.errorf(("ReadFile(%s, \"goodbye.txt\" = %q, %v, want %q, nil" : GoString), Go.toInterface(_desc), Go.toInterface((_data : GoString)), Go.toInterface(_err), Go.toInterface(("goodbye, world" : GoString)));
            };
            var __tmp__ = readDir(_sub, ("." : GoString)), _dirs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
            if (((_err != null) || (_dirs.length != (1 : GoInt))) || (_dirs[(0 : GoInt)].name() != ("goodbye.txt" : GoString))) {
                var _names:Slice<GoString> = (null : Slice<GoString>);
                for (__0 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()));
                };
                _t.errorf(("ReadDir(%s, \".\") = %v, %v, want %v, nil" : GoString), Go.toInterface(_desc), Go.toInterface(_names), Go.toInterface(_err), Go.toInterface((new Slice<GoString>(1, 1, ("goodbye.txt" : GoString)) : Slice<GoString>)));
            };
        };
        var __tmp__ = sub(Go.asInterface((new T_subOnly(Go.asInterface(_testFsys)) : T_subOnly)), ("sub" : GoString)), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:Error = __tmp__._1;
        _check(("subOnly" : GoString), _sub, _err);
        {
            var __tmp__ = sub(Go.asInterface((new T_openOnly(Go.asInterface(_testFsys)) : T_openOnly)), ("sub" : GoString));
            _sub = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : GoString), _sub, _err);
        {
            var __tmp__ = _sub.open(("nonexist" : GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(Go.toInterface(("Open(nonexist): succeeded" : GoString)));
        };
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok : true };
        } catch(_) {
            { value : (null : Ref<stdgo.io.fs.Fs.PathError>), ok : false };
        }, _pe = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(("Open(nonexist): error is %T, want *PathError" : GoString), Go.toInterface(_err));
        };
        if (_pe.path != (("nonexist" : GoString))) {
            _t.fatalf(("Open(nonexist): err.Path = %q, want %q" : GoString), Go.toInterface(_pe.path), Go.toInterface(("nonexist" : GoString)));
        };
    }
private function _walkTree(_n:Ref<Node>, _path:GoString, _f:(_path:GoString, _n:Ref<Node>) -> Void):Void {
        _f(_path, _n);
        for (__0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.Path.join(_path, _e._name), _f);
        };
    }
private function _makeTree():FS {
        var _fsys:stdgo.testing.fstest.Fstest.MapFS = ({
            final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.testing.fstest.Fstest.MapFile>>();
            x.__defaultValue__ = () -> (null : Ref<stdgo.testing.fstest.Fstest.MapFile>);
            @:mergeBlock {};
            x;
        } : GoMap<GoString, Ref<stdgo.testing.fstest.Fstest.MapFile>>);
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Ref<Node>):Void {
            if (_n._entries == null) {
                _fsys[_path] = (Go.setRef((new stdgo.testing.fstest.Fstest.MapFile() : stdgo.testing.fstest.Fstest.MapFile)) : Ref<stdgo.testing.fstest.Fstest.MapFile>);
            } else {
                _fsys[_path] = (Go.setRef(({ mode : (-2147483648u32 : stdgo.io.fs.Fs.FileMode) } : stdgo.testing.fstest.Fstest.MapFile)) : Ref<stdgo.testing.fstest.Fstest.MapFile>);
            };
        });
        return Go.asInterface(_fsys);
    }
/**
    // Assumes that each node name is unique. Good enough for a test.
    // If clear is true, any incoming error is cleared before return. The errors
    // are always accumulated, though.
**/
private function _mark(_entry:DirEntry, _err:Error, _errors:Ref<Slice<Error>>, _clear:Bool):Error {
        var _name:GoString = _entry.name();
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Ref<Node>):Void {
            if (_n._name == (_name)) {
                _n._mark++;
            };
        });
        if (_err != null) {
            _errors.__setData__(((_errors : Slice<Error>).__append__(_err)));
            if (_clear) {
                return (null : Error);
            };
            return _err;
        };
        return (null : Error);
    }
function testWalkDir(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpDir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(("finding working dir:" : GoString)), Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(("entering temp dir:" : GoString)), Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            var _fsys:stdgo.io.fs.Fs.FS = _makeTree();
            var _errors = new Slice<Error>((0 : GoInt).toBasic(), (10 : GoInt));
            var _clear:Bool = true;
            var _markFn:(GoString, stdgo.io.fs.Fs.DirEntry, Error) -> Error = function(_path:GoString, _entry:DirEntry, _err:Error):Error {
                return _mark(_entry, _err, (Go.setRef(_errors) : Ref<Slice<Error>>), _clear);
            };
            _err = walkDir(_fsys, ("." : GoString), _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : GoString), Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : GoInt))) {
                _t.fatalf(("unexpected errors: %s" : GoString), Go.toInterface(_errors));
            };
            _walkTree(_tree, _tree._name, function(_path:GoString, _n:Ref<Node>):Void {
                if (_n._mark != ((1 : GoInt))) {
                    _t.errorf(("node %s mark = %d; expected 1" : GoString), Go.toInterface(_path), Go.toInterface(_n._mark));
                };
                _n._mark = (0 : GoInt);
            });
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testIssue51617(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:GoString = _t.tempDir();
            for (__0 => _sub in (new Slice<GoString>(3, 3, ("a" : GoString), stdgo.path.filepath.Filepath.join(("a" : GoString), ("bad" : GoString)), stdgo.path.filepath.Filepath.join(("a" : GoString), ("next" : GoString))) : Slice<GoString>)) {
                {
                    var _err:Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_dir, _sub), (493u32 : stdgo.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
            var _bad:GoString = stdgo.path.filepath.Filepath.join(_dir, ("a" : GoString), ("bad" : GoString));
            {
                var _err:Error = stdgo.os.Os.chmod(_bad, (0u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> stdgo.os.Os.chmod(_a0, _a1));
            };
            var _saw:Slice<GoString> = (null : Slice<GoString>);
            var _err:Error = walkDir(stdgo.os.Os.dirFS(_dir), ("." : GoString), function(_path:GoString, _d:DirEntry, _err:Error):Error {
                if (_err != null) {
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                if (_d.isDir()) {
                    _saw = (_saw.__append__(_path));
                };
                return (null : Error);
            });
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _want = (new Slice<GoString>(4, 4, ("." : GoString), ("a" : GoString), ("a/bad" : GoString), ("a/next" : GoString)) : Slice<GoString>);
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_saw), Go.toInterface(_want))) {
                _t.errorf(("got directories %v, want %v" : GoString), Go.toInterface(_saw), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
class T_globOnly_asInterface {
    @:keep
    public dynamic function open(_name:GoString):{ var _0 : File; var _1 : Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function glob(_name:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } return __self__.value.glob(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_globOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_globOnly_asInterface) class T_globOnly_static_extension {
    @:keep
    static public function open( _:T_globOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function glob( __self__:T_globOnly, _name:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } return __self__.glob(_name);
}
class T_readDirOnly_asInterface {
    @:keep
    public dynamic function open(_name:GoString):{ var _0 : File; var _1 : Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function readDir(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } return __self__.value.readDir(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_readDirOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_readDirOnly_asInterface) class T_readDirOnly_static_extension {
    @:keep
    static public function open( _:T_readDirOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function readDir( __self__:T_readDirOnly, _name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } return __self__.readDir(_name);
}
class T_readFileOnly_asInterface {
    @:keep
    public dynamic function open(_name:GoString):{ var _0 : File; var _1 : Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function readFile(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.readFile(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_readFileOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_readFileOnly_asInterface) class T_readFileOnly_static_extension {
    @:keep
    static public function open( _:T_readFileOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function readFile( __self__:T_readFileOnly, _name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.readFile(_name);
}
class T_openOnly_asInterface {
    @:embedded
    public dynamic function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_openOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_openOnly_asInterface) class T_openOnly_static_extension {
    @:embedded
    public static function open( __self__:T_openOnly, _name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } return __self__.open(_name);
}
class T_statOnly_asInterface {
    @:keep
    public dynamic function open(_name:GoString):{ var _0 : File; var _1 : Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function stat(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __self__.value.stat(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_statOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_statOnly_asInterface) class T_statOnly_static_extension {
    @:keep
    static public function open( _:T_statOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function stat( __self__:T_statOnly, _name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __self__.stat(_name);
}
class T_subOnly_asInterface {
    @:keep
    public dynamic function open(_name:GoString):{ var _0 : File; var _1 : Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function sub(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : Error; } return __self__.value.sub(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_subOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_subOnly_asInterface) class T_subOnly_static_extension {
    @:keep
    static public function open( _:T_subOnly, _name:GoString):{ var _0 : File; var _1 : Error; } {
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function sub( __self__:T_subOnly, _name:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : Error; } return __self__.sub(_name);
}
