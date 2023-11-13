package stdgo.io.fs_test;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
/**
    
    
    
**/
var _formatTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(4, 4, ({ _input : ({ _name : ("hello.go" : stdgo.GoString)?.__copy__(), _size : (100i64 : stdgo.StdGoTypes.GoInt64), _mode : (420u32 : stdgo.io.fs.Fs.FileMode), _modTime : stdgo.time.Time.date((1970 : stdgo.StdGoTypes.GoInt), (1 : stdgo.time.Time.Month), (1 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), stdgo.time.Time.utc)?.__copy__(), _isDir : false } : T_formatTest), _wantFileInfo : ("-rw-r--r-- 100 1970-01-01 12:00:00 hello.go" : stdgo.GoString)?.__copy__(), _wantDirEntry : ("- hello.go" : stdgo.GoString)?.__copy__() } : T__struct_0), ({ _input : ({ _name : ("home/gopher" : stdgo.GoString)?.__copy__(), _size : (0i64 : stdgo.StdGoTypes.GoInt64), _mode : (-2147483155u32 : stdgo.io.fs.Fs.FileMode), _modTime : stdgo.time.Time.date((1970 : stdgo.StdGoTypes.GoInt), (1 : stdgo.time.Time.Month), (1 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), stdgo.time.Time.utc)?.__copy__(), _isDir : true } : T_formatTest), _wantFileInfo : ("drwxr-xr-x 0 1970-01-01 12:00:00 home/gopher/" : stdgo.GoString)?.__copy__(), _wantDirEntry : ("d home/gopher/" : stdgo.GoString)?.__copy__() } : T__struct_0), ({ _input : ({ _name : ("big" : stdgo.GoString)?.__copy__(), _size : (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), _mode : (524708u32 : stdgo.io.fs.Fs.FileMode), _modTime : stdgo.time.Time.date((1970 : stdgo.StdGoTypes.GoInt), (1 : stdgo.time.Time.Month), (1 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), stdgo.time.Time.utc)?.__copy__(), _isDir : false } : T_formatTest), _wantFileInfo : ("?rw-r--r-- 9223372036854775807 1970-01-01 12:00:00 big" : stdgo.GoString)?.__copy__(), _wantDirEntry : ("? big" : stdgo.GoString)?.__copy__() } : T__struct_0), ({ _input : ({ _name : ("small" : stdgo.GoString)?.__copy__(), _size : (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), _mode : (25166244u32 : stdgo.io.fs.Fs.FileMode), _modTime : stdgo.time.Time.date((1970 : stdgo.StdGoTypes.GoInt), (1 : stdgo.time.Time.Month), (1 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), stdgo.time.Time.utc)?.__copy__(), _isDir : false } : T_formatTest), _wantFileInfo : ("Surw-r--r-- -9223372036854775808 1970-01-01 12:00:00 small" : stdgo.GoString)?.__copy__(), _wantDirEntry : ("S small" : stdgo.GoString)?.__copy__() } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    
    
    
**/
var _isValidPathTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(
23,
23,
({ _name : ("." : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1),
({ _name : ("x" : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1),
({ _name : ("x/y" : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1),
({ _name : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_1),
({ _name : (".." : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("/" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x/" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("/x" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x/y/" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("/x/y" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("./" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("./x" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x/." : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x/./y" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("../" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("../x" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x/.." : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x/../y" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x//y" : stdgo.GoString)?.__copy__(), _ok : false } : T__struct_1),
({ _name : ("x\\" : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1),
({ _name : ("x\\y" : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1),
({ _name : ("x:y" : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1),
({ _name : ("\\x" : stdgo.GoString)?.__copy__(), _ok : true } : T__struct_1)) : stdgo.Slice<T__struct_1>);
/**
    
    
    
**/
var _globTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(5, 5, ({ _fs : stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), _pattern : ("glob.go" : stdgo.GoString)?.__copy__(), _result : ("glob.go" : stdgo.GoString)?.__copy__() } : T__struct_2), ({ _fs : stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), _pattern : ("gl?b.go" : stdgo.GoString)?.__copy__(), _result : ("glob.go" : stdgo.GoString)?.__copy__() } : T__struct_2), ({ _fs : stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), _pattern : ("gl\\ob.go" : stdgo.GoString)?.__copy__(), _result : ("glob.go" : stdgo.GoString)?.__copy__() } : T__struct_2), ({ _fs : stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), _pattern : ("*" : stdgo.GoString)?.__copy__(), _result : ("glob.go" : stdgo.GoString)?.__copy__() } : T__struct_2), ({ _fs : stdgo.os.Os.dirFS((".." : stdgo.GoString)?.__copy__()), _pattern : ("*/glob.go" : stdgo.GoString)?.__copy__(), _result : ("fs/glob.go" : stdgo.GoString)?.__copy__() } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
var _testFsys : stdgo.testing.fstest.Fstest.MapFS = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>);
        @:mergeBlock {
            x.set(("hello.txt" : stdgo.GoString), ({ data : (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), mode : (302u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
            x.set(("sub/goodbye.txt" : stdgo.GoString), ({ data : (("goodbye, world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), mode : (302u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>);
/**
    
    
    
**/
var _tree : stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node> = (stdgo.Go.setRef((new Node(("testdata" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>(4, 4, (new stdgo.io.fs_test.Fs_test.Node(("a" : stdgo.GoString)?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("b" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("c" : stdgo.GoString)?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("d" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>(3, 3, (new stdgo.io.fs_test.Fs_test.Node(("x" : stdgo.GoString)?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("y" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("z" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>(2, 2, (new stdgo.io.fs_test.Fs_test.Node(("u" : stdgo.GoString)?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node), (new stdgo.io.fs_test.Fs_test.Node(("v" : stdgo.GoString)?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.io.fs_test.Fs_test.Node)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : Node)) : stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>);
/**
    
    
    
**/
var _sysValue = (0 : stdgo.StdGoTypes.GoInt);
/**
    // formatTest implements FileInfo to test FormatFileInfo,
    // and implements DirEntry to test FormatDirEntry.
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_formatTest_static_extension) class T_formatTest {
    public var _name : stdgo.GoString = "";
    public var _size : stdgo.StdGoTypes.GoInt64 = 0;
    public var _mode : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    public var _modTime : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var _isDir : Bool = false;
    public function new(?_name:stdgo.GoString, ?_size:stdgo.StdGoTypes.GoInt64, ?_mode:stdgo.io.fs.Fs.FileMode, ?_modTime:stdgo.time.Time.Time, ?_isDir:Bool) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_isDir != null) this._isDir = _isDir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_formatTest(_name, _size, _mode, _modTime, _isDir);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.fs_test.Fs_test.T_globOnly_static_extension) class T_globOnly {
    @:embedded
    public var globFS : stdgo.io.fs.Fs.GlobFS = (null : stdgo.io.fs.Fs.GlobFS);
    public function new(?globFS:stdgo.io.fs.Fs.GlobFS) {
        if (globFS != null) this.globFS = globFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function glob(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return globFS.glob(_name);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return readDirFS.readDir(_name);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return readFileFS.readFile(_name);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function open(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return fs.open(_name);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function stat(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return statFS.stat(_name);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function sub(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return subFS.sub(_name);
    public function __copy__() {
        return new T_subOnly(subFS);
    }
}
/**
    
    
    
**/
@:structInit class Node {
    public var _name : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>);
    public var _mark : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.Node>>, ?_mark:stdgo.StdGoTypes.GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _input : stdgo.io.fs_test.Fs_test.T_formatTest;
    public var _wantFileInfo : stdgo.GoString;
    public var _wantDirEntry : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _fs : stdgo.io.fs.Fs.FS;
    public var _pattern : stdgo.GoString;
    public var _result : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.io.fs_test.Fs_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _path : stdgo.GoString;
    public var _wantMode : stdgo.io.fs.Fs.FileMode;
    public var _wantDir : Bool;
};
function exampleWalkDir():Void {
        var _root:stdgo.GoString = ("/usr/local/go/bin" : stdgo.GoString)?.__copy__();
        var _fileSystem:stdgo.io.fs.Fs.FS = stdgo.os.Os.dirFS(_root?.__copy__());
        fs.walkDir(_fileSystem, ("." : stdgo.GoString)?.__copy__(), function(_path:stdgo.GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_path));
            return (null : stdgo.Error);
        });
    }
function testFormatFileInfo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _formatTests) {
            var _got:stdgo.GoString = formatFileInfo(stdgo.Go.asInterface((stdgo.Go.setRef(_test._input) : stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.T_formatTest>)))?.__copy__();
            if (_got != (_test._wantFileInfo)) {
                _t.errorf(("%d: FormatFileInfo(%#v) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._input)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantFileInfo));
            };
        };
    }
function testFormatDirEntry(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _formatTests) {
            var _got:stdgo.GoString = formatDirEntry(stdgo.Go.asInterface((stdgo.Go.setRef(_test._input) : stdgo.StdGoTypes.Ref<stdgo.io.fs_test.Fs_test.T_formatTest>)))?.__copy__();
            if (_got != (_test._wantDirEntry)) {
                _t.errorf(("%d: FormatDirEntry(%#v) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._input)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantDirEntry));
            };
        };
    }
function testValidPath(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _isValidPathTests) {
            var _ok:Bool = validPath(_tt._name?.__copy__());
            if (_ok != (_tt._ok)) {
                _t.errorf(("ValidPath(%q) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
            };
        };
    }
function testGlob(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _globTests) {
            var __tmp__ = glob(_tt._fs, _tt._pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _tt._result?.__copy__())) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_tt._result));
            };
        };
        for (__1 => _pattern in (new stdgo.Slice<stdgo.GoString>(3, 3, ("no_match" : stdgo.GoString)?.__copy__(), ("../*/no_match" : stdgo.GoString)?.__copy__(), ("\\*" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), _pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches));
            };
        };
    }
function testGlobError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ("[]" : stdgo.GoString)?.__copy__(), ("nonexist/[]" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _pattern in _bad) {
            var __tmp__ = glob(stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), _pattern?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.path.Path.errBadPattern))) {
                _t.errorf(("Glob(fs, %#q) returned err=%v, want path.ErrBadPattern" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
            };
        };
    }
function testCVE202230630(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = glob(stdgo.os.Os.dirFS(("." : stdgo.GoString)?.__copy__()), ("/*" : stdgo.GoString) + stdgo.strings.Strings.repeat(("/" : stdgo.GoString)?.__copy__(), (10001 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__()), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.path.Path.errBadPattern))) {
            _t.fatalf(("Glob returned err=%v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.path.Path.errBadPattern));
        };
    }
/**
    // contains reports whether vector contains the string s.
**/
function _contains(_vector:stdgo.Slice<stdgo.GoString>, _s:stdgo.GoString):Bool {
        for (__0 => _elem in _vector) {
            if (_elem == (_s)) {
                return true;
            };
        };
        return false;
    }
function testGlobMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _check = function(_desc:stdgo.GoString, _names:stdgo.Slice<stdgo.GoString>, _err:stdgo.Error):Void {
            _t.helper();
            if (((_err != null) || (_names.length != (1 : stdgo.StdGoTypes.GoInt))) || (_names[(0 : stdgo.StdGoTypes.GoInt)] != ("hello.txt" : stdgo.GoString))) {
                _t.errorf(("Glob(%s) = %v, %v, want %v, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_names), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ("hello.txt" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)));
            };
        };
        var __tmp__ = glob(stdgo.Go.asInterface((new T_globOnly(stdgo.Go.asInterface(_testFsys)) : T_globOnly)), ("*.txt" : stdgo.GoString)?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("readDirOnly" : stdgo.GoString)?.__copy__(), _names, _err);
        {
            var __tmp__ = glob(stdgo.Go.asInterface((new T_openOnly(stdgo.Go.asInterface(_testFsys)) : T_openOnly)), ("*.txt" : stdgo.GoString)?.__copy__());
            _names = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString)?.__copy__(), _names, _err);
    }
function testReadDir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _check = function(_desc:stdgo.GoString, _dirs:stdgo.Slice<DirEntry>, _err:stdgo.Error):Void {
            _t.helper();
            if ((((_err != null) || (_dirs.length != (2 : stdgo.StdGoTypes.GoInt))) || (_dirs[(0 : stdgo.StdGoTypes.GoInt)].name() != ("hello.txt" : stdgo.GoString))) || (_dirs[(1 : stdgo.StdGoTypes.GoInt)].name() != ("sub" : stdgo.GoString))) {
                var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__0 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()?.__copy__()));
                };
                _t.errorf(("ReadDir(%s) = %v, %v, want %v, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_names), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(2, 2, ("hello.txt" : stdgo.GoString)?.__copy__(), ("sub" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)));
            };
        };
        var __tmp__ = readDir(stdgo.Go.asInterface((new T_readDirOnly(stdgo.Go.asInterface(_testFsys)) : T_readDirOnly)), ("." : stdgo.GoString)?.__copy__()), _dirs:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("readDirOnly" : stdgo.GoString)?.__copy__(), _dirs, _err);
        {
            var __tmp__ = readDir(stdgo.Go.asInterface((new T_openOnly(stdgo.Go.asInterface(_testFsys)) : T_openOnly)), ("." : stdgo.GoString)?.__copy__());
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString)?.__copy__(), _dirs, _err);
        var __tmp__ = sub(stdgo.Go.asInterface(_testFsys), ("." : stdgo.GoString)?.__copy__()), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = readDir(_sub, ("." : stdgo.GoString)?.__copy__());
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("sub(.)" : stdgo.GoString)?.__copy__(), _dirs, _err);
    }
function testFileInfoToDirEntry(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testFs:stdgo.testing.fstest.Fstest.MapFS = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>);
            @:mergeBlock {
                x.set(("notadir.txt" : stdgo.GoString), ({ data : (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), mode : (0u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
                x.set(("adir" : stdgo.GoString), ({ data : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), mode : (-2147483648u32 : stdgo.io.fs.Fs.FileMode), modTime : stdgo.time.Time.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_sysValue)) } : stdgo.testing.fstest.Fstest.MapFS));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>);
        var _tests = (new stdgo.Slice<T__struct_3>(2, 2, ({ _path : ("notadir.txt" : stdgo.GoString)?.__copy__(), _wantMode : (0u32 : stdgo.io.fs.Fs.FileMode), _wantDir : false } : T__struct_3), ({ _path : ("adir" : stdgo.GoString)?.__copy__(), _wantMode : (-2147483648u32 : stdgo.io.fs.Fs.FileMode), _wantDir : true } : T__struct_3)) : stdgo.Slice<T__struct_3>);
        for (__0 => _test in _tests) {
            var _test:T__struct_3 = {
                final x = _test;
                ({ _path : x._path?.__copy__(), _wantMode : x._wantMode, _wantDir : x._wantDir } : T__struct_3);
            };
            _t.run(_test._path?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var __tmp__ = stat(stdgo.Go.asInterface(_testFs), _test._path?.__copy__()), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _dirEntry:stdgo.io.fs.Fs.DirEntry = fileInfoToDirEntry(_fi);
                {
                    var __0:stdgo.io.fs.Fs.FileMode = _dirEntry.type(), __1:stdgo.io.fs.Fs.FileMode = _test._wantMode, _w:stdgo.io.fs.Fs.FileMode = __1, _g:stdgo.io.fs.Fs.FileMode = __0;
                    if (_g != (_w)) {
                        _t.errorf(("FileMode mismatch: got=%v, want=%v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w)));
                    };
                };
                {
                    var __0:stdgo.GoString = _dirEntry.name()?.__copy__(), __1:stdgo.GoString = _test._path?.__copy__(), _w:stdgo.GoString = __1, _g:stdgo.GoString = __0;
                    if (_g != (_w)) {
                        _t.errorf(("Name mismatch: got=%v, want=%v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
                {
                    var __0:Bool = _dirEntry.isDir(), __1:Bool = _test._wantDir, _w:Bool = __1, _g:Bool = __0;
                    if (_g != (_w)) {
                        _t.errorf(("IsDir mismatch: got=%v, want=%v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            });
        };
    }
function testReadFile(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = readFile(stdgo.Go.asInterface((new T_readFileOnly(stdgo.Go.asInterface(_testFsys)) : T_readFileOnly)), ("hello.txt" : stdgo.GoString)?.__copy__()), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null)) {
            _t.fatalf(("ReadFile(readFileOnly, \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello, world" : stdgo.GoString)));
        };
        {
            var __tmp__ = readFile(stdgo.Go.asInterface((new T_openOnly(stdgo.Go.asInterface(_testFsys)) : T_openOnly)), ("hello.txt" : stdgo.GoString)?.__copy__());
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null)) {
            _t.fatalf(("ReadFile(openOnly, \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello, world" : stdgo.GoString)));
        };
        var __tmp__ = sub(stdgo.Go.asInterface(_testFsys), ("." : stdgo.GoString)?.__copy__()), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = readFile(_sub, ("hello.txt" : stdgo.GoString)?.__copy__());
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null)) {
            _t.fatalf(("ReadFile(sub(.), \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello, world" : stdgo.GoString)));
        };
    }
function testStat(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _check:(stdgo.GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> Void = function(_desc:stdgo.GoString, _info:FileInfo, _err:stdgo.Error):Void {
            _t.helper();
            if (((_err != null) || (_info == null)) || (_info.mode() != (302u32 : stdgo.io.fs.Fs.FileMode))) {
                var _infoStr:stdgo.GoString = ("<nil>" : stdgo.GoString)?.__copy__();
                if (_info != null) {
                    _infoStr = stdgo.fmt.Fmt.sprintf(("FileInfo(Mode: %#o)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode())))?.__copy__();
                };
                _t.fatalf(("Stat(%s) = %v, %v, want Mode:0456, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_infoStr), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stat(stdgo.Go.asInterface((new T_statOnly(stdgo.Go.asInterface(_testFsys)) : T_statOnly)), ("hello.txt" : stdgo.GoString)?.__copy__()), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("statOnly" : stdgo.GoString)?.__copy__(), _info, _err);
        {
            var __tmp__ = stat(stdgo.Go.asInterface((new T_openOnly(stdgo.Go.asInterface(_testFsys)) : T_openOnly)), ("hello.txt" : stdgo.GoString)?.__copy__());
            _info = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString)?.__copy__(), _info, _err);
    }
function testSub(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _check:(stdgo.GoString, stdgo.io.fs.Fs.FS, stdgo.Error) -> Void = function(_desc:stdgo.GoString, _sub:FS, _err:stdgo.Error):Void {
            _t.helper();
            if (_err != null) {
                _t.errorf(("Sub(sub): %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
                return;
            };
            var __tmp__ = readFile(_sub, ("goodbye.txt" : stdgo.GoString)?.__copy__()), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_data : stdgo.GoString) != ("goodbye, world" : stdgo.GoString)) || (_err != null)) {
                _t.errorf(("ReadFile(%s, \"goodbye.txt\" = %q, %v, want %q, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface((_data : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("goodbye, world" : stdgo.GoString)));
            };
            var __tmp__ = readDir(_sub, ("." : stdgo.GoString)?.__copy__()), _dirs:stdgo.Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_dirs.length != (1 : stdgo.StdGoTypes.GoInt))) || (_dirs[(0 : stdgo.StdGoTypes.GoInt)].name() != ("goodbye.txt" : stdgo.GoString))) {
                var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__0 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()?.__copy__()));
                };
                _t.errorf(("ReadDir(%s, \".\") = %v, %v, want %v, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_names), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ("goodbye.txt" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)));
            };
        };
        var __tmp__ = sub(stdgo.Go.asInterface((new T_subOnly(stdgo.Go.asInterface(_testFsys)) : T_subOnly)), ("sub" : stdgo.GoString)?.__copy__()), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("subOnly" : stdgo.GoString)?.__copy__(), _sub, _err);
        {
            var __tmp__ = sub(stdgo.Go.asInterface((new T_openOnly(stdgo.Go.asInterface(_testFsys)) : T_openOnly)), ("sub" : stdgo.GoString)?.__copy__());
            _sub = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString)?.__copy__(), _sub, _err);
        {
            var __tmp__ = _sub.open(("nonexist" : stdgo.GoString)?.__copy__());
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Open(nonexist): succeeded" : stdgo.GoString)));
        };
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<PathError>)) : stdgo.StdGoTypes.Ref<PathError>), ok : true };
        } catch(_) {
            { value : (null : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>), ok : false };
        }, _pe = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(("Open(nonexist): error is %T, want *PathError" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
        };
        if (_pe.path != (("nonexist" : stdgo.GoString))) {
            _t.fatalf(("Open(nonexist): err.Path = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_pe.path), stdgo.Go.toInterface(("nonexist" : stdgo.GoString)));
        };
    }
function _walkTree(_n:stdgo.StdGoTypes.Ref<Node>, _path:stdgo.GoString, _f:(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>) -> Void):Void {
        _f(_path?.__copy__(), _n);
        for (__0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.Path.join(_path?.__copy__(), _e._name?.__copy__())?.__copy__(), _f);
        };
    }
function _makeTree():FS {
        var _fsys:stdgo.testing.fstest.Fstest.MapFS = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>>);
        _walkTree(_tree, _tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
            if (_n._entries == null) {
                _fsys[_path?.__copy__()] = (stdgo.Go.setRef((new stdgo.testing.fstest.Fstest.MapFile() : stdgo.testing.fstest.Fstest.MapFile)) : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>);
            } else {
                _fsys[_path?.__copy__()] = (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo.io.fs.Fs.FileMode) } : stdgo.testing.fstest.Fstest.MapFile)) : stdgo.StdGoTypes.Ref<stdgo.testing.fstest.Fstest.MapFile>);
            };
        });
        return stdgo.Go.asInterface(_fsys);
    }
/**
    // Assumes that each node name is unique. Good enough for a test.
    // If clear is true, any incoming error is cleared before return. The errors
    // are always accumulated, though.
**/
function _mark(_entry:DirEntry, _err:stdgo.Error, _errors:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.Error>>, _clear:Bool):stdgo.Error {
        var _name:stdgo.GoString = _entry.name()?.__copy__();
        _walkTree(_tree, _tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
            if (_n._name == (_name)) {
                _n._mark++;
            };
        });
        if (_err != null) {
            _errors.__setData__(((_errors : stdgo.Slice<stdgo.Error>).__append__(_err)));
            if (_clear) {
                return (null : stdgo.Error);
            };
            return _err;
        };
        return (null : stdgo.Error);
    }
function testWalkDir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("finding working dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("entering temp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0?.__copy__()));
            };
            var _fsys:stdgo.io.fs.Fs.FS = _makeTree();
            var _errors = new stdgo.Slice<stdgo.Error>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (10 : stdgo.StdGoTypes.GoInt));
            var _clear:Bool = true;
            var _markFn:(stdgo.GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, _entry:DirEntry, _err:stdgo.Error):stdgo.Error {
                return _mark(_entry, _err, (stdgo.Go.setRef(_errors) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.Error>>), _clear);
            };
            _err = walkDir(_fsys, ("." : stdgo.GoString)?.__copy__(), _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.fatalf(("unexpected errors: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_errors));
            };
            _walkTree(_tree, _tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
                if (_n._mark != ((1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("node %s mark = %d; expected 1" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_n._mark));
                };
                _n._mark = (0 : stdgo.StdGoTypes.GoInt);
            });
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testIssue51617(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:stdgo.GoString = _t.tempDir()?.__copy__();
            for (__0 => _sub in (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString)?.__copy__(), stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString)?.__copy__(), ("bad" : stdgo.GoString)?.__copy__())?.__copy__(), stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString)?.__copy__(), ("next" : stdgo.GoString)?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>)) {
                {
                    var _err:stdgo.Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_dir?.__copy__(), _sub?.__copy__())?.__copy__(), (493u32 : stdgo.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var _bad:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("bad" : stdgo.GoString)?.__copy__())?.__copy__();
            {
                var _err:stdgo.Error = stdgo.os.Os.chmod(_bad?.__copy__(), (0u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> stdgo.os.Os.chmod(_a0?.__copy__(), _a1));
            };
            var _saw:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err:stdgo.Error = walkDir(stdgo.os.Os.dirFS(_dir?.__copy__()), ("." : stdgo.GoString)?.__copy__(), function(_path:stdgo.GoString, _d:DirEntry, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                if (_d.isDir()) {
                    _saw = (_saw.__append__(_path?.__copy__()));
                };
                return (null : stdgo.Error);
            });
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ("." : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("a/bad" : stdgo.GoString)?.__copy__(), ("a/next" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want))) {
                _t.errorf(("got directories %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
class T_formatTest_asInterface {
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface return __self__.value.sys();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function modTime():stdgo.time.Time.Time return __self__.value.modTime();
    @:keep
    public dynamic function mode():FileMode return __self__.value.mode();
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_formatTest>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_formatTest_asInterface) class T_formatTest_static_extension {
    @:keep
    static public function info( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return { _0 : stdgo.Go.asInterface(_fs), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):FileMode {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return _fs._mode.type();
    }
    @:keep
    static public function sys( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):stdgo.StdGoTypes.AnyInterface {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return (null : stdgo.StdGoTypes.AnyInterface);
    }
    @:keep
    static public function isDir( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):Bool {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return _fs._isDir;
    }
    @:keep
    static public function modTime( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):stdgo.time.Time.Time {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return _fs._modTime?.__copy__();
    }
    @:keep
    static public function mode( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):FileMode {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return _fs._mode;
    }
    @:keep
    static public function size( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):stdgo.StdGoTypes.GoInt64 {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return _fs._size;
    }
    @:keep
    static public function name( _fs:stdgo.StdGoTypes.Ref<T_formatTest>):stdgo.GoString {
        @:recv var _fs:stdgo.StdGoTypes.Ref<T_formatTest> = _fs;
        return _fs._name?.__copy__();
    }
}
class T_globOnly_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function glob(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.glob(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_globOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_globOnly_asInterface) class T_globOnly_static_extension {
    @:keep
    static public function open( _:T_globOnly, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _:T_globOnly = _?.__copy__();
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function glob( __self__:T_globOnly, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.glob(_name);
}
class T_readDirOnly_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readDirOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_readDirOnly_asInterface) class T_readDirOnly_static_extension {
    @:keep
    static public function open( _:T_readDirOnly, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _:T_readDirOnly = _?.__copy__();
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function readDir( __self__:T_readDirOnly, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_name);
}
class T_readFileOnly_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readFileOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_readFileOnly_asInterface) class T_readFileOnly_static_extension {
    @:keep
    static public function open( _:T_readFileOnly, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _:T_readFileOnly = _?.__copy__();
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function readFile( __self__:T_readFileOnly, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.readFile(_name);
}
class T_openOnly_asInterface {
    @:embedded
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_openOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_openOnly_asInterface) class T_openOnly_static_extension {
    @:embedded
    public static function open( __self__:T_openOnly, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.open(_name);
}
class T_statOnly_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_statOnly_asInterface) class T_statOnly_static_extension {
    @:keep
    static public function open( _:T_statOnly, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _:T_statOnly = _?.__copy__();
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function stat( __self__:T_statOnly, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat(_name);
}
class T_subOnly_asInterface {
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    @:embedded
    public dynamic function sub(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return __self__.value.sub(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_subOnly>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.fs_test.Fs_test.T_subOnly_asInterface) class T_subOnly_static_extension {
    @:keep
    static public function open( _:T_subOnly, _name:stdgo.GoString):{ var _0 : File; var _1 : stdgo.Error; } {
        @:recv var _:T_subOnly = _?.__copy__();
        return { _0 : (null : stdgo.io.fs.Fs.File), _1 : errNotExist };
    }
    @:embedded
    public static function sub( __self__:T_subOnly, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return __self__.sub(_name);
}
