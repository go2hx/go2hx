package stdgo.testing.fstest;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _2 : stdgo.io.fs.Fs.FS = {
        final __self__ = new MapFS_wrapper(((((null : MapFS)) : MapFS)));
        __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return ((((null : MapFS)) : MapFS)).glob(_pattern) #else null #end;
        __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return ((((null : MapFS)) : MapFS)).open(_name) #else null #end;
        __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return ((((null : MapFS)) : MapFS)).readDir(_name) #else null #end;
        __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((((null : MapFS)) : MapFS)).readFile(_name) #else null #end;
        __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((((null : MapFS)) : MapFS)).stat(_name) #else null #end;
        __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return ((((null : MapFS)) : MapFS)).sub(_dir) #else null #end;
        __self__;
    };
var _3 : stdgo.io.fs.Fs.File = {
        final __self__ = new T_openMapFile_wrapper(((null : T_openMapFile)));
        __self__.close = #if !macro function():stdgo.Error return ((null : T_openMapFile)).close() #else null #end;
        __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((null : T_openMapFile)).info() #else null #end;
        __self__.isDir = #if !macro function():Bool return ((null : T_openMapFile)).isDir() #else null #end;
        __self__.modTime = #if !macro function():stdgo.time.Time.Time return ((null : T_openMapFile)).modTime() #else null #end;
        __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return ((null : T_openMapFile)).mode() #else null #end;
        __self__.name = #if !macro function():GoString return ((null : T_openMapFile)).name() #else null #end;
        __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((null : T_openMapFile)).read(_b) #else null #end;
        __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _offset:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((null : T_openMapFile)).readAt(_b, _offset) #else null #end;
        __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((null : T_openMapFile)).seek(_offset, _whence) #else null #end;
        __self__.size = #if !macro function():GoInt64 return ((null : T_openMapFile)).size() #else null #end;
        __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((null : T_openMapFile)).stat() #else null #end;
        __self__.sys = #if !macro function():AnyInterface return ((null : T_openMapFile)).sys() #else null #end;
        __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return ((null : T_openMapFile)).type() #else null #end;
        __self__;
    };
@:structInit class MapFile {
    public var data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var mode : stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
    public var modTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var sys : AnyInterface = ((null : AnyInterface));
    public function new(?data:Slice<GoUInt8>, ?mode:stdgo.io.fs.Fs.FileMode, ?modTime:stdgo.time.Time.Time, ?sys:AnyInterface) {
        if (data != null) this.data = data;
        if (mode != null) this.mode = mode;
        if (modTime != null) this.modTime = modTime;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new MapFile(data, mode, modTime, sys);
    }
}
@:structInit class T_fsOnly {
    @:embedded
    public var fs : stdgo.io.fs.Fs.FS = ((null : stdgo.io.fs.Fs.FS));
    public function new(?fs:stdgo.io.fs.Fs.FS) {
        if (fs != null) this.fs = fs;
    }
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return fs.open(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fsOnly(fs);
    }
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : MapFS = ((null : MapFS));
    public function new(?mapFS:MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function glob(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return mapFS.glob(_pattern);
    public function open(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return mapFS.open(_name);
    public function readDir(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return mapFS.readDir(_name);
    public function readFile(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return mapFS.readFile(_name);
    public function stat(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return mapFS.stat(_name);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapFileInfo_static_extension) class T_mapFileInfo {
    public var _name : GoString = "";
    public var _f : Ref<MapFile> = null;
    public function new(?_name:GoString, ?_f:Ref<MapFile>) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mapFileInfo(_name, _f);
    }
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_openMapFile_static_extension) class T_openMapFile {
    public var _path : GoString = "";
    @:embedded
    public var _mapFileInfo : T_mapFileInfo = new T_mapFileInfo();
    public var _offset : GoInt64 = 0;
    public function new(?_path:GoString, ?_mapFileInfo:T_mapFileInfo, ?_offset:GoInt64) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_offset != null) this._offset = _offset;
    }
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _mapFileInfo.info();
    public function isDir():Bool return _mapFileInfo.isDir();
    public function modTime():stdgo.time.Time.Time return _mapFileInfo.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return _mapFileInfo.mode();
    public function name():GoString return _mapFileInfo.name();
    public function size():GoInt64 return _mapFileInfo.size();
    public function sys():AnyInterface return _mapFileInfo.sys();
    public function type():stdgo.io.fs.Fs.FileMode return _mapFileInfo.type();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openMapFile(_path, _mapFileInfo, _offset);
    }
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_mapDir_static_extension) class T_mapDir {
    public var _path : GoString = "";
    @:embedded
    public var _mapFileInfo : T_mapFileInfo = new T_mapFileInfo();
    public var _entry : Slice<T_mapFileInfo> = ((null : Slice<T_mapFileInfo>));
    public var _offset : GoInt = 0;
    public function new(?_path:GoString, ?_mapFileInfo:T_mapFileInfo, ?_entry:Slice<T_mapFileInfo>, ?_offset:GoInt) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_entry != null) this._entry = _entry;
        if (_offset != null) this._offset = _offset;
    }
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _mapFileInfo.info();
    public function isDir():Bool return _mapFileInfo.isDir();
    public function modTime():stdgo.time.Time.Time return _mapFileInfo.modTime();
    public function mode():stdgo.io.fs.Fs.FileMode return _mapFileInfo.mode();
    public function name():GoString return _mapFileInfo.name();
    public function size():GoInt64 return _mapFileInfo.size();
    public function sys():AnyInterface return _mapFileInfo.sys();
    public function type():stdgo.io.fs.Fs.FileMode return _mapFileInfo.type();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
    }
}
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsTester_static_extension) class T_fsTester {
    public var _fsys : stdgo.io.fs.Fs.FS = ((null : stdgo.io.fs.Fs.FS));
    public var _errText : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _dirs : Slice<GoString> = ((null : Slice<GoString>));
    public var _files : Slice<GoString> = ((null : Slice<GoString>));
    public function new(?_fsys:stdgo.io.fs.Fs.FS, ?_errText:Slice<GoUInt8>, ?_dirs:Slice<GoString>, ?_files:Slice<GoString>) {
        if (_fsys != null) this._fsys = _fsys;
        if (_errText != null) this._errText = _errText;
        if (_dirs != null) this._dirs = _dirs;
        if (_files != null) this._files = _files;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fsTester(_fsys, _errText, _dirs, _files);
    }
}
@:named @:using(stdgo.testing.fstest.Fstest.MapFS_static_extension) typedef MapFS = GoMap<GoString, Ref<MapFile>>;
/**
    // TestFS tests a file system implementation.
    // It walks the entire tree of files in fsys,
    // opening and checking that each file behaves correctly.
    // It also checks that the file system contains at least the expected files.
    // As a special case, if no expected files are listed, fsys must be empty.
    // Otherwise, fsys must contain at least the listed files; it can also contain others.
    // The contents of fsys must not change concurrently with TestFS.
    //
    // If TestFS finds any misbehaviors, it returns an error reporting all of them.
    // The error text spans multiple lines, one per detected misbehavior.
    //
    // Typical usage inside a test is:
    //
    //	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
    //		t.Fatal(err)
    //	}
    //
**/
function testFS(_fsys:stdgo.io.fs.Fs.FS, _expected:haxe.Rest<GoString>):Error {
        var _expected = new Slice<GoString>(..._expected);
        {
            var _err:stdgo.Error = _testFS(_fsys, ..._expected.__toArray__());
            if (_err != null) {
                return _err;
            };
        };
        for (_0 => _name in _expected) {
            {
                var _i:GoInt = stdgo.strings.Strings.index(_name, ((("/" : GoString))));
                if (_i >= ((0 : GoInt))) {
                    var _dir:GoString = ((_name.__slice__(0, _i) : GoString)), _dirSlash:GoString = ((_name.__slice__(0, _i + ((1 : GoInt))) : GoString));
                    var _subExpected:Slice<GoString> = ((null : Slice<GoString>));
                    for (_1 => _name in _expected) {
                        if (stdgo.strings.Strings.hasPrefix(_name, _dirSlash)) {
                            _subExpected = (_subExpected != null ? _subExpected.__append__(((_name.__slice__((_dirSlash != null ? _dirSlash.length : ((0 : GoInt)))) : GoString))) : new Slice<GoString>(((_name.__slice__((_dirSlash != null ? _dirSlash.length : ((0 : GoInt)))) : GoString))));
                        };
                    };
                    var __tmp__ = stdgo.io.fs.Fs.sub(_fsys, _dir), _sub:stdgo.io.fs.Fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                    {
                        var _err:stdgo.Error = _testFS(_sub, ..._subExpected.__toArray__());
                        if (_err != null) {
                            return stdgo.fmt.Fmt.errorf(((("testing fs.Sub(fsys, %s): %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
                        };
                    };
                    break;
                };
            };
        };
        return ((null : stdgo.Error));
    }
function _testFS(_fsys:stdgo.io.fs.Fs.FS, _expected:haxe.Rest<GoString>):Error {
        var _expected = new Slice<GoString>(..._expected);
        var _t:T_fsTester = (({ _fsys : _fsys, _errText : ((null : Slice<GoUInt8>)), _dirs : ((null : Slice<GoString>)), _files : ((null : Slice<GoString>)) } : T_fsTester));
        _t._checkDir(((("." : GoString))));
        _t._checkOpen(((("." : GoString))));
        var _found = ((new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) : GoMap<GoString, Bool>));
        for (_0 => _dir in _t._dirs) {
            if (_found != null) _found[_dir] = true;
        };
        for (_1 => _file in _t._files) {
            if (_found != null) _found[_file] = true;
        };
        if (_found != null) _found.__remove__(((("." : GoString))));
        if (((_expected != null ? _expected.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_found != null ? _found.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            var _list:Slice<GoString> = ((null : Slice<GoString>));
            for (_k => _ in _found) {
                if (_k != ((("." : GoString)))) {
                    _list = (_list != null ? _list.__append__(_k) : new Slice<GoString>(_k));
                };
            };
            stdgo.sort.Sort.strings(_list);
            if ((_list != null ? _list.length : ((0 : GoInt))) > ((15 : GoInt))) {
                _list = (((_list.__slice__(0, ((10 : GoInt))) : Slice<GoString>)) != null ? ((_list.__slice__(0, ((10 : GoInt))) : Slice<GoString>)).__append__(((("..." : GoString)))) : new Slice<GoString>(((("..." : GoString)))));
            };
            _t._errorf(((("expected empty file system but found files:\n%s" : GoString))), Go.toInterface(stdgo.strings.Strings.join(_list, ((("\n" : GoString))))));
        };
        for (_2 => _name in _expected) {
            if (!(_found != null ? _found[_name] : false)) {
                _t._errorf(((("expected but not found: %s" : GoString))), Go.toInterface(_name));
            };
        };
        if ((_t._errText != null ? _t._errText.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        return stdgo.errors.Errors.new_(((("TestFS found errors:\n" : GoString))) + ((_t._errText : GoString)));
    }
/**
    // formatEntry formats an fs.DirEntry into a string for error messages and comparison.
**/
function _formatEntry(_entry:stdgo.io.fs.Fs.DirEntry):GoString {
        return stdgo.fmt.Fmt.sprintf(((("%s IsDir=%v Type=%v" : GoString))), Go.toInterface(_entry.name()), Go.toInterface(_entry.isDir()), Go.toInterface({
            final __self__ = new stdgo.io.fs.Fs.FileMode_wrapper(_entry.type());
            __self__.isDir = #if !macro function():Bool return _entry.type().isDir() #else null #end;
            __self__.isRegular = #if !macro function():Bool return _entry.type().isRegular() #else null #end;
            __self__.perm = #if !macro function():stdgo.io.fs.Fs.FileMode return _entry.type().perm() #else null #end;
            __self__.toString = #if !macro function():GoString return _entry.type().toString() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return _entry.type().type() #else null #end;
            __self__;
        }));
    }
/**
    // formatInfoEntry formats an fs.FileInfo into a string like the result of formatEntry, for error messages and comparison.
**/
function _formatInfoEntry(_info:stdgo.io.fs.Fs.FileInfo):GoString {
        return stdgo.fmt.Fmt.sprintf(((("%s IsDir=%v Type=%v" : GoString))), Go.toInterface(_info.name()), Go.toInterface(_info.isDir()), Go.toInterface({
            final __self__ = new stdgo.io.fs.Fs.FileMode_wrapper(_info.mode().type());
            __self__.isDir = #if !macro function():Bool return _info.mode().type().isDir() #else null #end;
            __self__.isRegular = #if !macro function():Bool return _info.mode().type().isRegular() #else null #end;
            __self__.perm = #if !macro function():stdgo.io.fs.Fs.FileMode return _info.mode().type().perm() #else null #end;
            __self__.toString = #if !macro function():GoString return _info.mode().type().toString() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return _info.mode().type().type() #else null #end;
            __self__;
        }));
    }
/**
    // formatInfo formats an fs.FileInfo into a string for error messages and comparison.
**/
function _formatInfo(_info:stdgo.io.fs.Fs.FileInfo):GoString {
        return stdgo.fmt.Fmt.sprintf(((("%s IsDir=%v Mode=%v Size=%d ModTime=%v" : GoString))), Go.toInterface(_info.name()), Go.toInterface(_info.isDir()), Go.toInterface({
            final __self__ = new stdgo.io.fs.Fs.FileMode_wrapper(_info.mode());
            __self__.isDir = #if !macro function():Bool return _info.mode().isDir() #else null #end;
            __self__.isRegular = #if !macro function():Bool return _info.mode().isRegular() #else null #end;
            __self__.perm = #if !macro function():stdgo.io.fs.Fs.FileMode return _info.mode().perm() #else null #end;
            __self__.toString = #if !macro function():GoString return _info.mode().toString() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return _info.mode().type() #else null #end;
            __self__;
        }), Go.toInterface(_info.size()), Go.toInterface({
            final __self__ = new stdgo.time.Time.Time_wrapper(_info.modTime());
            __self__.add = #if !macro function(_d:stdgo.time.Time.Duration):stdgo.time.Time.Time return _info.modTime().add(_d) #else null #end;
            __self__.addDate = #if !macro function(_years:GoInt, _months:GoInt, _days:GoInt):stdgo.time.Time.Time return _info.modTime().addDate(_years, _months, _days) #else null #end;
            __self__.after = #if !macro function(_u:stdgo.time.Time.Time):Bool return _info.modTime().after(_u) #else null #end;
            __self__.appendFormat = #if !macro function(_b:Slice<GoUInt8>, _layout:GoString):Slice<GoUInt8> return _info.modTime().appendFormat(_b, _layout) #else null #end;
            __self__.before = #if !macro function(_u:stdgo.time.Time.Time):Bool return _info.modTime().before(_u) #else null #end;
            __self__.clock = #if !macro function():{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; } return _info.modTime().clock() #else null #end;
            __self__.date = #if !macro function():{ var _0 : GoInt; var _1 : stdgo.time.Time.Month; var _2 : GoInt; } return _info.modTime().date() #else null #end;
            __self__.day = #if !macro function():GoInt return _info.modTime().day() #else null #end;
            __self__.equal = #if !macro function(_u:stdgo.time.Time.Time):Bool return _info.modTime().equal(_u) #else null #end;
            __self__.format = #if !macro function(_layout:GoString):GoString return _info.modTime().format(_layout) #else null #end;
            __self__.goString = #if !macro function():GoString return _info.modTime().goString() #else null #end;
            __self__.gobDecode = #if !macro function(_data:Slice<GoUInt8>):stdgo.Error return _info.modTime().gobDecode(_data) #else null #end;
            __self__.gobEncode = #if !macro function():{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _info.modTime().gobEncode() #else null #end;
            __self__.hour = #if !macro function():GoInt return _info.modTime().hour() #else null #end;
            __self__.isoweek = #if !macro function():{ var _0 : GoInt; var _1 : GoInt; } return _info.modTime().isoweek() #else null #end;
            __self__.in_ = #if !macro function(_loc:Ref<stdgo.time.Time.Location>):stdgo.time.Time.Time return _info.modTime().in_(_loc) #else null #end;
            __self__.isDST = #if !macro function():Bool return _info.modTime().isDST() #else null #end;
            __self__.isZero = #if !macro function():Bool return _info.modTime().isZero() #else null #end;
            __self__.local = #if !macro function():stdgo.time.Time.Time return _info.modTime().local() #else null #end;
            __self__.location = #if !macro function():Ref<stdgo.time.Time.Location> return _info.modTime().location() #else null #end;
            __self__.marshalBinary = #if !macro function():{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _info.modTime().marshalBinary() #else null #end;
            __self__.marshalJSON = #if !macro function():{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _info.modTime().marshalJSON() #else null #end;
            __self__.marshalText = #if !macro function():{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _info.modTime().marshalText() #else null #end;
            __self__.minute = #if !macro function():GoInt return _info.modTime().minute() #else null #end;
            __self__.month = #if !macro function():stdgo.time.Time.Month return _info.modTime().month() #else null #end;
            __self__.nanosecond = #if !macro function():GoInt return _info.modTime().nanosecond() #else null #end;
            __self__.round = #if !macro function(_d:stdgo.time.Time.Duration):stdgo.time.Time.Time return _info.modTime().round(_d) #else null #end;
            __self__.second = #if !macro function():GoInt return _info.modTime().second() #else null #end;
            __self__.toString = #if !macro function():GoString return _info.modTime().toString() #else null #end;
            __self__.sub = #if !macro function(_u:stdgo.time.Time.Time):stdgo.time.Time.Duration return _info.modTime().sub(_u) #else null #end;
            __self__.truncate = #if !macro function(_d:stdgo.time.Time.Duration):stdgo.time.Time.Time return _info.modTime().truncate(_d) #else null #end;
            __self__.utc = #if !macro function():stdgo.time.Time.Time return _info.modTime().utc() #else null #end;
            __self__.unix = #if !macro function():GoInt64 return _info.modTime().unix() #else null #end;
            __self__.unixMicro = #if !macro function():GoInt64 return _info.modTime().unixMicro() #else null #end;
            __self__.unixMilli = #if !macro function():GoInt64 return _info.modTime().unixMilli() #else null #end;
            __self__.unixNano = #if !macro function():GoInt64 return _info.modTime().unixNano() #else null #end;
            __self__.unmarshalBinary = #if !macro function(_data:Slice<GoUInt8>):stdgo.Error return _info.modTime().unmarshalBinary(_data) #else null #end;
            __self__.unmarshalJSON = #if !macro function(_data:Slice<GoUInt8>):stdgo.Error return _info.modTime().unmarshalJSON(_data) #else null #end;
            __self__.unmarshalText = #if !macro function(_data:Slice<GoUInt8>):stdgo.Error return _info.modTime().unmarshalText(_data) #else null #end;
            __self__.weekday = #if !macro function():stdgo.time.Time.Weekday return _info.modTime().weekday() #else null #end;
            __self__.year = #if !macro function():GoInt return _info.modTime().year() #else null #end;
            __self__.yearDay = #if !macro function():GoInt return _info.modTime().yearDay() #else null #end;
            __self__.zone = #if !macro function():{ var _0 : GoString; var _1 : GoInt; } return _info.modTime().zone() #else null #end;
            __self__._abs = #if !macro function():GoUInt64 return _info.modTime()._abs() #else null #end;
            __self__._addSec = #if !macro function(_d:GoInt64):Void _info.modTime()._addSec(_d) #else null #end;
            __self__._date = #if !macro function(_full:Bool):{ var _0 : GoInt; var _1 : stdgo.time.Time.Month; var _2 : GoInt; var _3 : GoInt; } return _info.modTime()._date(_full) #else null #end;
            __self__._locabs = #if !macro function():{ var _0 : GoString; var _1 : GoInt; var _2 : GoUInt64; } return _info.modTime()._locabs() #else null #end;
            __self__._mono = #if !macro function():GoInt64 return _info.modTime()._mono() #else null #end;
            __self__._nsec = #if !macro function():GoInt32 return _info.modTime()._nsec() #else null #end;
            __self__._sec = #if !macro function():GoInt64 return _info.modTime()._sec() #else null #end;
            __self__._setLoc = #if !macro function(_loc:Ref<stdgo.time.Time.Location>):Void _info.modTime()._setLoc(_loc) #else null #end;
            __self__._setMono = #if !macro function(_m:GoInt64):Void _info.modTime()._setMono(_m) #else null #end;
            __self__._stripMono = #if !macro function():Void _info.modTime()._stripMono() #else null #end;
            __self__._unixSec = #if !macro function():GoInt64 return _info.modTime()._unixSec() #else null #end;
            __self__;
        }));
    }
@:keep class T_noSub_static_extension {
    @:keep
    public static function sub( _:T_noSub):Void {}
}
class T_noSub_wrapper {
    @:keep
    public var sub : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_noSub;
}
@:keep class T_mapFileInfo_static_extension {
    @:keep
    public static function info( _i:T_mapFileInfo):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : {
            final __self__ = new T_mapFileInfo_wrapper(_i);
            __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _i.info() #else null #end;
            __self__.isDir = #if !macro function():Bool return _i.isDir() #else null #end;
            __self__.modTime = #if !macro function():stdgo.time.Time.Time return _i.modTime() #else null #end;
            __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return _i.mode() #else null #end;
            __self__.name = #if !macro function():GoString return _i.name() #else null #end;
            __self__.size = #if !macro function():GoInt64 return _i.size() #else null #end;
            __self__.sys = #if !macro function():AnyInterface return _i.sys() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return _i.type() #else null #end;
            __self__;
        }, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function sys( _i:T_mapFileInfo):AnyInterface {
        return Go.toInterface(_i._f.sys);
    }
    @:keep
    public static function isDir( _i:T_mapFileInfo):Bool {
        return (_i._f.mode & (("2147483648" : GoUInt32))) != ((0 : GoUInt32));
    }
    @:keep
    public static function modTime( _i:T_mapFileInfo):stdgo.time.Time.Time {
        return (_i._f.modTime == null ? null : _i._f.modTime.__copy__());
    }
    @:keep
    public static function type( _i:T_mapFileInfo):stdgo.io.fs.Fs.FileMode {
        return _i._f.mode.type();
    }
    @:keep
    public static function mode( _i:T_mapFileInfo):stdgo.io.fs.Fs.FileMode {
        return _i._f.mode;
    }
    @:keep
    public static function size( _i:T_mapFileInfo):GoInt64 {
        return (((_i._f.data != null ? _i._f.data.length : ((0 : GoInt))) : GoInt64));
    }
    @:keep
    public static function name( _i:T_mapFileInfo):GoString {
        return _i._name;
    }
}
class T_mapFileInfo_wrapper {
    @:keep
    public var info : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    @:keep
    public var sys : () -> AnyInterface = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var modTime : () -> stdgo.time.Time.Time = null;
    @:keep
    public var type : () -> stdgo.io.fs.Fs.FileMode = null;
    @:keep
    public var mode : () -> stdgo.io.fs.Fs.FileMode = null;
    @:keep
    public var size : () -> GoInt64 = null;
    @:keep
    public var name : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_mapFileInfo;
}
@:keep class T_openMapFile_static_extension {
    @:keep
    public static function readAt( _f:T_openMapFile, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        if ((_offset < ((0 : GoInt64))) || (_offset > (((_f._mapFileInfo._f.data != null ? _f._mapFileInfo._f.data.length : ((0 : GoInt))) : GoInt64)))) {
            return { _0 : ((0 : GoInt)), _1 : {
                final __self__ = new stdgo.io.fs.Fs.PathError_wrapper((({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)));
                __self__.error = #if !macro function():GoString return (({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).error() #else null #end;
                __self__.timeout = #if !macro function():Bool return (({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).timeout() #else null #end;
                __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).unwrap() #else null #end;
                __self__;
            } };
        };
        var _n:GoInt = Go.copySlice(_b, ((_f._mapFileInfo._f.data.__slice__(_offset) : Slice<GoUInt8>)));
        if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
            return { _0 : _n, _1 : stdgo.io.Io.eof };
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function seek( _f:T_openMapFile, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        if (_whence == ((0 : GoInt))) {} else if (_whence == ((1 : GoInt))) {
            _offset = _offset + (_f._offset);
        } else if (_whence == ((2 : GoInt))) {
            _offset = _offset + ((((_f._mapFileInfo._f.data != null ? _f._mapFileInfo._f.data.length : ((0 : GoInt))) : GoInt64)));
        };
        if ((_offset < ((0 : GoInt64))) || (_offset > (((_f._mapFileInfo._f.data != null ? _f._mapFileInfo._f.data.length : ((0 : GoInt))) : GoInt64)))) {
            return { _0 : ((0 : GoInt64)), _1 : {
                final __self__ = new stdgo.io.fs.Fs.PathError_wrapper((({ op : ((("seek" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)));
                __self__.error = #if !macro function():GoString return (({ op : ((("seek" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).error() #else null #end;
                __self__.timeout = #if !macro function():Bool return (({ op : ((("seek" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).timeout() #else null #end;
                __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("seek" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).unwrap() #else null #end;
                __self__;
            } };
        };
        _f._offset = _offset;
        return { _0 : _offset, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function read( _f:T_openMapFile, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_f._offset >= (((_f._mapFileInfo._f.data != null ? _f._mapFileInfo._f.data.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        if (_f._offset < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : {
                final __self__ = new stdgo.io.fs.Fs.PathError_wrapper((({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)));
                __self__.error = #if !macro function():GoString return (({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).error() #else null #end;
                __self__.timeout = #if !macro function():Bool return (({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).timeout() #else null #end;
                __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("read" : GoString))), path : _f._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).unwrap() #else null #end;
                __self__;
            } };
        };
        var _n:GoInt = Go.copySlice(_b, ((_f._mapFileInfo._f.data.__slice__(_f._offset) : Slice<GoUInt8>)));
        _f._offset = _f._offset + (((_n : GoInt64)));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function close( _f:T_openMapFile):Error {
        return ((null : stdgo.Error));
    }
    @:keep
    public static function stat( _f:T_openMapFile):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : {
            final __self__ = new T_mapFileInfo_wrapper(_f._mapFileInfo);
            __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _f._mapFileInfo.info() #else null #end;
            __self__.isDir = #if !macro function():Bool return _f._mapFileInfo.isDir() #else null #end;
            __self__.modTime = #if !macro function():stdgo.time.Time.Time return _f._mapFileInfo.modTime() #else null #end;
            __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return _f._mapFileInfo.mode() #else null #end;
            __self__.name = #if !macro function():GoString return _f._mapFileInfo.name() #else null #end;
            __self__.size = #if !macro function():GoInt64 return _f._mapFileInfo.size() #else null #end;
            __self__.sys = #if !macro function():AnyInterface return _f._mapFileInfo.sys() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return _f._mapFileInfo.type() #else null #end;
            __self__;
        }, _1 : ((null : stdgo.Error)) };
    }
}
class T_openMapFile_wrapper {
    @:keep
    public var readAt : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var seek : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var stat : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_openMapFile;
}
@:keep class T_mapDir_static_extension {
    @:keep
    public static function readDir( _d:T_mapDir, _count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _n:GoInt = (_d._entry != null ? _d._entry.length : ((0 : GoInt))) - _d._offset;
        if ((_n == ((0 : GoInt))) && (_count > ((0 : GoInt)))) {
            return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : stdgo.io.Io.eof };
        };
        if ((_count > ((0 : GoInt))) && (_n > _count)) {
            _n = _count;
        };
        var _list = new Slice<stdgo.io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.io.fs.Fs.DirEntry))]);
        for (_i => _ in _list) {
            if (_list != null) _list[_i] = {
                final __self__ = new T_mapFileInfo_wrapper((_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()));
                __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).info() #else null #end;
                __self__.isDir = #if !macro function():Bool return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).isDir() #else null #end;
                __self__.modTime = #if !macro function():stdgo.time.Time.Time return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).modTime() #else null #end;
                __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).mode() #else null #end;
                __self__.name = #if !macro function():GoString return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).name() #else null #end;
                __self__.size = #if !macro function():GoInt64 return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).size() #else null #end;
                __self__.sys = #if !macro function():AnyInterface return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).sys() #else null #end;
                __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return (_d._entry != null ? _d._entry[_d._offset + _i] : new T_mapFileInfo()).type() #else null #end;
                __self__;
            };
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function read( _d:T_mapDir, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : {
            final __self__ = new stdgo.io.fs.Fs.PathError_wrapper((({ op : ((("read" : GoString))), path : _d._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)));
            __self__.error = #if !macro function():GoString return (({ op : ((("read" : GoString))), path : _d._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).error() #else null #end;
            __self__.timeout = #if !macro function():Bool return (({ op : ((("read" : GoString))), path : _d._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).timeout() #else null #end;
            __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("read" : GoString))), path : _d._path, err : stdgo.io.fs.Fs.errInvalid } : stdgo.io.fs.Fs.PathError)).unwrap() #else null #end;
            __self__;
        } };
    }
    @:keep
    public static function close( _d:T_mapDir):Error {
        return ((null : stdgo.Error));
    }
    @:keep
    public static function stat( _d:T_mapDir):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : {
            final __self__ = new T_mapFileInfo_wrapper(_d._mapFileInfo);
            __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _d._mapFileInfo.info() #else null #end;
            __self__.isDir = #if !macro function():Bool return _d._mapFileInfo.isDir() #else null #end;
            __self__.modTime = #if !macro function():stdgo.time.Time.Time return _d._mapFileInfo.modTime() #else null #end;
            __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return _d._mapFileInfo.mode() #else null #end;
            __self__.name = #if !macro function():GoString return _d._mapFileInfo.name() #else null #end;
            __self__.size = #if !macro function():GoInt64 return _d._mapFileInfo.size() #else null #end;
            __self__.sys = #if !macro function():AnyInterface return _d._mapFileInfo.sys() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return _d._mapFileInfo.type() #else null #end;
            __self__;
        }, _1 : ((null : stdgo.Error)) };
    }
}
class T_mapDir_wrapper {
    @:keep
    public var readDir : GoInt -> { var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var stat : () -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_mapDir;
}
@:keep class T_fsTester_static_extension {
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using open.
    **/
    @:keep
    public static function _checkBadPath( _t:T_fsTester, _file:GoString, _desc:GoString, _open:GoString -> Error):Void {
        var _bad = ((new Slice<GoString>(((("/" : GoString))) + _file, _file + ((("/." : GoString)))) : Slice<GoString>));
        if (_file == ((("." : GoString)))) {
            _bad = (_bad != null ? _bad.__append__(((("/" : GoString)))) : new Slice<GoString>(((("/" : GoString)))));
        };
        {
            var _i:GoInt = stdgo.strings.Strings.index(_file, ((("/" : GoString))));
            if (_i >= ((0 : GoInt))) {
                _bad = (_bad != null ? _bad.__append__((((_file.__slice__(0, _i) : GoString)) + ((("//" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + ((("/./" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + (("\\" : GoString))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + ((("/../" : GoString)))) + _file) : new Slice<GoString>((((_file.__slice__(0, _i) : GoString)) + ((("//" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + ((("/./" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + (("\\" : GoString))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + ((("/../" : GoString)))) + _file));
            };
        };
        {
            var _i:GoInt = stdgo.strings.Strings.lastIndex(_file, ((("/" : GoString))));
            if (_i >= ((0 : GoInt))) {
                _bad = (_bad != null ? _bad.__append__((((_file.__slice__(0, _i) : GoString)) + ((("//" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + ((("/./" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + (("\\" : GoString))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (_file + ((("/../" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString))) : new Slice<GoString>((((_file.__slice__(0, _i) : GoString)) + ((("//" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + ((("/./" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (((_file.__slice__(0, _i) : GoString)) + (("\\" : GoString))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString)), (_file + ((("/../" : GoString)))) + ((_file.__slice__(_i + ((1 : GoInt))) : GoString))));
            };
        };
        for (_0 => _b in _bad) {
            {
                var _err:stdgo.Error = _open(_b);
                if (_err == null) {
                    _t._errorf(((("%s: %s(%s) succeeded, want error" : GoString))), Go.toInterface(_file), Go.toInterface(_desc), Go.toInterface(_b));
                };
            };
        };
    }
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
    **/
    @:keep
    public static function _checkOpen( _t:T_fsTester, _file:GoString):Void {
        _t._checkBadPath(_file, ((("Open" : GoString))), function(_file:GoString):Error {
            var __tmp__ = _t._fsys.open(_file), _f:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _f.close();
            };
            return _err;
        });
    }
    @:keep
    public static function _checkFileRead( _t:T_fsTester, _file:GoString, _desc:GoString, _data1:Slice<GoByte>, _data2:Slice<GoByte>):Void {
        if (((_data1 : GoString)) != ((_data2 : GoString))) {
            _t._errorf(((("%s: %s: different data returned\n\t%q\n\t%q" : GoString))), Go.toInterface(_file), Go.toInterface(_desc), Go.toInterface(_data1), Go.toInterface(_data2));
            return;
        };
    }
    /**
        // checkFile checks that basic file reading works correctly.
    **/
    @:keep
    public static function _checkFile( _t:T_fsTester, _file:GoString):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._files = (_t._files != null ? _t._files.__append__(_file) : new Slice<GoString>(_file));
            var __tmp__ = _t._fsys.open(_file), _f:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t._errorf(((("%s: Open: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                return;
            };
            var __tmp__ = stdgo.io.Io.readAll(_f), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _f.close();
                _t._errorf(((("%s: Open+ReadAll: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                return;
            };
            {
                var _err:stdgo.Error = _f.close();
                if (_err != null) {
                    _t._errorf(((("%s: Close: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                };
            };
            _f.close();
            {
                var __tmp__ = try {
                    { value : ((((_t._fsys.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.ReadFileFS)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.io.fs.Fs.ReadFileFS)), ok : false };
                }, _fsys = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    var __tmp__ = _fsys.readFile(_file), _data2:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t._errorf(((("%s: fsys.ReadFile: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                        return;
                    };
                    _t._checkFileRead(_file, ((("ReadAll vs fsys.ReadFile" : GoString))), _data, _data2);
                    for (_i => _ in _data2) {
                        if (_data2 != null) _data2[_i]++;
                    };
                    {
                        var __tmp__ = _fsys.readFile(_file);
                        _data2 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _t._errorf(((("%s: second call to fsys.ReadFile: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                        return;
                    };
                    _t._checkFileRead(_file, ((("Readall vs second fsys.ReadFile" : GoString))), _data, _data2);
                    _t._checkBadPath(_file, ((("ReadFile" : GoString))), function(_name:GoString):Error {
                        var __tmp__ = _fsys.readFile(_name), _0:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        return _err;
                    });
                };
            };
            var __tmp__ = stdgo.io.fs.Fs.readFile(_t._fsys, _file), _data2:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t._errorf(((("%s: fs.ReadFile: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                return;
            };
            _t._checkFileRead(_file, ((("ReadAll vs fs.ReadFile" : GoString))), _data, _data2);
            {
                var __tmp__ = _t._fsys.open(_file);
                _f = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t._errorf(((("%s: second Open: %v" : GoString))), Go.toInterface(_file), Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _f.close());
            {
                var _err:stdgo.Error = stdgo.testing.iotest.Iotest.testReader(_f, _data);
                if (_err != null) {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _t._errorf(((("%s: failed TestReader:\n\t%s" : GoString))), Go.toInterface(_file), Go.toInterface(stdgo.strings.Strings.replaceAll(_err.error(), ((("\n" : GoString))), ((("\n\t" : GoString))))));
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
                };
            };
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
    /**
        // checkDirList checks that two directory lists contain the same files and file info.
        // The order of the lists need not match.
    **/
    @:keep
    public static function _checkDirList( _t:T_fsTester, _dir:GoString, _desc:GoString, _list1:Slice<stdgo.io.fs.Fs.DirEntry>, _list2:Slice<stdgo.io.fs.Fs.DirEntry>):Void {
        var _old = ((new GoObjectMap<GoString, stdgo.io.fs.Fs.DirEntry>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("stdgo.io.fs.Fs.DirEntry", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))))) : GoMap<GoString, stdgo.io.fs.Fs.DirEntry>));
        var _checkMode:stdgo.io.fs.Fs.DirEntry -> Void = function(_entry:stdgo.io.fs.Fs.DirEntry):Void {
            if (_entry.isDir() != ((_entry.type() & (("2147483648" : GoUInt32))) != ((0 : GoUInt32)))) {
                if (_entry.isDir()) {
                    _t._errorf(((("%s: ReadDir returned %s with IsDir() = true, Type() & ModeDir = 0" : GoString))), Go.toInterface(_dir), Go.toInterface(_entry.name()));
                } else {
                    _t._errorf(((("%s: ReadDir returned %s with IsDir() = false, Type() & ModeDir = ModeDir" : GoString))), Go.toInterface(_dir), Go.toInterface(_entry.name()));
                };
            };
        };
        for (_0 => _entry1 in _list1) {
            if (_old != null) _old[_entry1.name()] = _entry1;
            _checkMode(_entry1);
        };
        var _diffs:Slice<GoString> = ((null : Slice<GoString>));
        for (_1 => _entry2 in _list2) {
            var _entry1:stdgo.io.fs.Fs.DirEntry = (_old != null ? _old[_entry2.name()] : ((null : stdgo.io.fs.Fs.DirEntry)));
            if (_entry1 == null) {
                _checkMode(_entry2);
                _diffs = (_diffs != null ? _diffs.__append__(((("+ " : GoString))) + _formatEntry(_entry2)) : new Slice<GoString>(((("+ " : GoString))) + _formatEntry(_entry2)));
                continue;
            };
            if (_formatEntry(_entry1) != _formatEntry(_entry2)) {
                _diffs = (_diffs != null ? _diffs.__append__(((("- " : GoString))) + _formatEntry(_entry1), ((("+ " : GoString))) + _formatEntry(_entry2)) : new Slice<GoString>(((("- " : GoString))) + _formatEntry(_entry1), ((("+ " : GoString))) + _formatEntry(_entry2)));
            };
            if (_old != null) _old.__remove__(_entry2.name());
        };
        for (_2 => _entry1 in _old) {
            _diffs = (_diffs != null ? _diffs.__append__(((("- " : GoString))) + _formatEntry(_entry1)) : new Slice<GoString>(((("- " : GoString))) + _formatEntry(_entry1)));
        };
        if ((_diffs != null ? _diffs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        stdgo.sort.Sort.slice(Go.toInterface(_diffs), function(_i:GoInt, _j:GoInt):Bool {
            var _fi = stdgo.strings.Strings.fields((_diffs != null ? _diffs[_i] : (("" : GoString))));
            var _fj = stdgo.strings.Strings.fields((_diffs != null ? _diffs[_j] : (("" : GoString))));
            return (((_fi != null ? _fi[((1 : GoInt))] : (("" : GoString))) + (((" " : GoString)))) + (_fj != null ? _fj[((0 : GoInt))] : (("" : GoString)))) < (((_fj != null ? _fj[((1 : GoInt))] : (("" : GoString))) + (((" " : GoString)))) + (_fi != null ? _fi[((0 : GoInt))] : (("" : GoString))));
        });
        _t._errorf(((("%s: diff %s:\n\t%s" : GoString))), Go.toInterface(_dir), Go.toInterface(_desc), Go.toInterface(stdgo.strings.Strings.join(_diffs, ((("\n\t" : GoString))))));
    }
    /**
        // checkStat checks that a direct stat of path matches entry,
        // which was found in the parent's directory listing.
    **/
    @:keep
    public static function _checkStat( _t:T_fsTester, _path:GoString, _entry:stdgo.io.fs.Fs.DirEntry):Void {
        var __tmp__ = _t._fsys.open(_path), _file:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t._errorf(((("%s: Open: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        var __tmp__ = _file.stat(), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _file.close();
        if (_err != null) {
            _t._errorf(((("%s: Stat: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        var _fentry:GoString = _formatEntry(_entry);
        var _fientry:GoString = _formatInfoEntry(_info);
        if ((_fentry != _fientry) && ((_entry.type() & ((134217728 : GoUInt32))) == ((0 : GoUInt32)))) {
            _t._errorf(((("%s: mismatch:\n\tentry = %s\n\tfile.Stat() = %s" : GoString))), Go.toInterface(_path), Go.toInterface(_fentry), Go.toInterface(_fientry));
        };
        var __tmp__ = _entry.info(), _einfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t._errorf(((("%s: entry.Info: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        var _finfo:GoString = _formatInfo(_info);
        if ((_entry.type() & ((134217728 : GoUInt32))) != ((0 : GoUInt32))) {
            var _feentry:GoString = _formatInfoEntry(_einfo);
            if (_fentry != _feentry) {
                _t._errorf(((("%s: mismatch\n\tentry = %s\n\tentry.Info() = %s\n" : GoString))), Go.toInterface(_path), Go.toInterface(_fentry), Go.toInterface(_feentry));
            };
        } else {
            var _feinfo:GoString = _formatInfo(_einfo);
            if (_feinfo != _finfo) {
                _t._errorf(((("%s: mismatch:\n\tentry.Info() = %s\n\tfile.Stat() = %s\n" : GoString))), Go.toInterface(_path), Go.toInterface(_feinfo), Go.toInterface(_finfo));
            };
        };
        var __tmp__ = stdgo.io.fs.Fs.stat(_t._fsys, _path), _info2:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t._errorf(((("%s: fs.Stat: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        var _finfo2:GoString = _formatInfo(_info2);
        if (_finfo2 != _finfo) {
            _t._errorf(((("%s: fs.Stat(...) = %s\n\twant %s" : GoString))), Go.toInterface(_path), Go.toInterface(_finfo2), Go.toInterface(_finfo));
        };
        {
            var __tmp__ = try {
                { value : ((((_t._fsys.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.StatFS)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.fs.Fs.StatFS)), ok : false };
            }, _fsys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _fsys.stat(_path), _info2:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t._errorf(((("%s: fsys.Stat: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
                    return;
                };
                var _finfo2:GoString = _formatInfo(_info2);
                if (_finfo2 != _finfo) {
                    _t._errorf(((("%s: fsys.Stat(...) = %s\n\twant %s" : GoString))), Go.toInterface(_path), Go.toInterface(_finfo2), Go.toInterface(_finfo));
                };
            };
        };
    }
    /**
        // checkGlob checks that various glob patterns work if the file system implements GlobFS.
    **/
    @:keep
    public static function _checkGlob( _t:T_fsTester, _dir:GoString, _list:Slice<stdgo.io.fs.Fs.DirEntry>):Void {
        {
            var __tmp__ = try {
                { value : ((((_t._fsys.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.GlobFS)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.fs.Fs.GlobFS)), ok : false };
            }, _0 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return;
            };
        };
        var _glob:GoString = (("" : GoString));
        if (_dir != ((("." : GoString)))) {
            var _elem = stdgo.strings.Strings.split(_dir, ((("/" : GoString))));
            for (_i => _e in _elem) {
                var _pattern:Slice<GoRune> = ((null : Slice<GoInt32>));
                for (_j => _r in _e) {
                    if (((((_r == ((((("*" : GoString))).code : GoRune))) || (_r == ((((("?" : GoString))).code : GoRune)))) || (_r == ((((("\\" : GoString))).code : GoRune)))) || (_r == ((((("[" : GoString))).code : GoRune)))) || (_r == ((((("-" : GoString))).code : GoRune)))) {
                        _pattern = (_pattern != null ? _pattern.__append__(((((("\\" : GoString))).code : GoRune)), _r) : new Slice<GoInt32>(((((("\\" : GoString))).code : GoRune)), _r));
                        continue;
                    };
                    if ((_i + _j) % ((5 : GoInt)) == ((0 : GoInt))) {
                        _pattern = (_pattern != null ? _pattern.__append__(_r) : new Slice<GoInt32>(_r));
                    } else if ((_i + _j) % ((5 : GoInt)) == ((1 : GoInt))) {
                        _pattern = (_pattern != null ? _pattern.__append__(((((("[" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))) : new Slice<GoInt32>(((((("[" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))));
                    } else if ((_i + _j) % ((5 : GoInt)) == ((2 : GoInt))) {
                        _pattern = (_pattern != null ? _pattern.__append__(((((("[" : GoString))).code : GoRune)), _r, ((((("-" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))) : new Slice<GoInt32>(((((("[" : GoString))).code : GoRune)), _r, ((((("-" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))));
                    } else if ((_i + _j) % ((5 : GoInt)) == ((3 : GoInt))) {
                        _pattern = (_pattern != null ? _pattern.__append__(((((("[" : GoString))).code : GoRune)), ((((("\\" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))) : new Slice<GoInt32>(((((("[" : GoString))).code : GoRune)), ((((("\\" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))));
                    } else if ((_i + _j) % ((5 : GoInt)) == ((4 : GoInt))) {
                        _pattern = (_pattern != null ? _pattern.__append__(((((("[" : GoString))).code : GoRune)), ((((("\\" : GoString))).code : GoRune)), _r, ((((("-" : GoString))).code : GoRune)), ((((("\\" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))) : new Slice<GoInt32>(((((("[" : GoString))).code : GoRune)), ((((("\\" : GoString))).code : GoRune)), _r, ((((("-" : GoString))).code : GoRune)), ((((("\\" : GoString))).code : GoRune)), _r, ((((("]" : GoString))).code : GoRune))));
                    };
                };
                if (_elem != null) _elem[_i] = ((_pattern : GoString));
            };
            _glob = stdgo.strings.Strings.join(_elem, ((("/" : GoString)))) + ((("/" : GoString)));
        };
        {
            var __tmp__ = ((((_t._fsys.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.GlobFS)).glob(_glob + ((("nonexist/[]" : GoString)))), _1:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t._errorf(((("%s: Glob(%#q): bad pattern not detected" : GoString))), Go.toInterface(_dir), Go.toInterface(_glob + ((("nonexist/[]" : GoString)))));
            };
        };
        var _c:GoInt32 = ((((((("a" : GoString))).code : GoRune)) : GoRune));
        Go.cfor(_c <= ((((("z" : GoString))).code : GoRune)), _c++, {
            var _have:Bool = false, _haveNot:Bool = false;
            for (_2 => _d in _list) {
                if (stdgo.strings.Strings.containsRune(_d.name(), _c)) {
                    _have = true;
                } else {
                    _haveNot = true;
                };
            };
            if (_have && _haveNot) {
                break;
            };
        });
        if (_c > ((((("z" : GoString))).code : GoRune))) {
            _c = ((((("a" : GoString))).code : GoRune));
        };
        _glob = _glob + ((((("*" : GoString))) + ((_c : GoString))) + ((("*" : GoString))));
        var _want:Slice<GoString> = ((null : Slice<GoString>));
        for (_3 => _d in _list) {
            if (stdgo.strings.Strings.containsRune(_d.name(), _c)) {
                _want = (_want != null ? _want.__append__(stdgo.path.Path.join(_dir, _d.name())) : new Slice<GoString>(stdgo.path.Path.join(_dir, _d.name())));
            };
        };
        var __tmp__ = ((((_t._fsys.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.GlobFS)).glob(_glob), _names:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t._errorf(((("%s: Glob(%#q): %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_glob), Go.toInterface(_err));
            return;
        };
        if (stdgo.reflect.Reflect.deepEqual(Go.toInterface(_want), Go.toInterface(_names))) {
            return;
        };
        if (!stdgo.sort.Sort.stringsAreSorted(_names)) {
            _t._errorf(((("%s: Glob(%#q): unsorted output:\n%s" : GoString))), Go.toInterface(_dir), Go.toInterface(_glob), Go.toInterface(stdgo.strings.Strings.join(_names, ((("\n" : GoString))))));
            stdgo.sort.Sort.strings(_names);
        };
        var _problems:Slice<GoString> = ((null : Slice<GoString>));
        while (((_want != null ? _want.length : ((0 : GoInt))) > ((0 : GoInt))) || ((_names != null ? _names.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            if ((((_want != null ? _want.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_names != null ? _names.length : ((0 : GoInt))) > ((0 : GoInt)))) && ((_want != null ? _want[((0 : GoInt))] : (("" : GoString))) == (_names != null ? _names[((0 : GoInt))] : (("" : GoString))))) {
                {
                    final __tmp__0 = ((_want.__slice__(((1 : GoInt))) : Slice<GoString>));
                    final __tmp__1 = ((_names.__slice__(((1 : GoInt))) : Slice<GoString>));
                    _want = __tmp__0;
                    _names = __tmp__1;
                };
            } else if (((_want != null ? _want.length : ((0 : GoInt))) > ((0 : GoInt))) && (((_names != null ? _names.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_want != null ? _want[((0 : GoInt))] : (("" : GoString))) < (_names != null ? _names[((0 : GoInt))] : (("" : GoString)))))) {
                _problems = (_problems != null ? _problems.__append__(((("missing: " : GoString))) + (_want != null ? _want[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("missing: " : GoString))) + (_want != null ? _want[((0 : GoInt))] : (("" : GoString)))));
                _want = ((_want.__slice__(((1 : GoInt))) : Slice<GoString>));
            } else {
                _problems = (_problems != null ? _problems.__append__(((("extra: " : GoString))) + (_names != null ? _names[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("extra: " : GoString))) + (_names != null ? _names[((0 : GoInt))] : (("" : GoString)))));
                _names = ((_names.__slice__(((1 : GoInt))) : Slice<GoString>));
            };
        };
        _t._errorf(((("%s: Glob(%#q): wrong output:\n%s" : GoString))), Go.toInterface(_dir), Go.toInterface(_glob), Go.toInterface(stdgo.strings.Strings.join(_problems, ((("\n" : GoString))))));
    }
    /**
        // checkDir checks the directory dir, which is expected to exist
        // (it is either the root or was found in a directory listing with IsDir true).
    **/
    @:keep
    public static function _checkDir( _t:T_fsTester, _dir:GoString):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._dirs = (_t._dirs != null ? _t._dirs.__append__(_dir) : new Slice<GoString>(_dir));
            var _d:stdgo.io.fs.Fs.ReadDirFile = _t._openDir(_dir);
            if (_d == null) {
                return;
            };
            var __tmp__ = _d.readDir(((-1 : GoInt))), _list:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _d.close();
                _t._errorf(((("%s: ReadDir(-1): %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
                return;
            };
            var _prefix:GoString = (("" : GoString));
            if (_dir == ((("." : GoString)))) {
                _prefix = ((("" : GoString)));
            } else {
                _prefix = _dir + ((("/" : GoString)));
            };
            for (_0 => _info in _list) {
                var _name:GoString = _info.name();
                if (_name == ((("." : GoString))) || _name == (((".." : GoString))) || _name == ((("" : GoString)))) {
                    _t._errorf(((("%s: ReadDir: child has invalid name: %#q" : GoString))), Go.toInterface(_dir), Go.toInterface(_name));
                    continue;
                } else if (stdgo.strings.Strings.contains(_name, ((("/" : GoString))))) {
                    _t._errorf(((("%s: ReadDir: child name contains slash: %#q" : GoString))), Go.toInterface(_dir), Go.toInterface(_name));
                    continue;
                } else if (stdgo.strings.Strings.contains(_name, "\\")) {
                    _t._errorf(((("%s: ReadDir: child name contains backslash: %#q" : GoString))), Go.toInterface(_dir), Go.toInterface(_name));
                    continue;
                };
                var _path:GoString = _prefix + _name;
                _t._checkStat(_path, _info);
                _t._checkOpen(_path);
                if (_info.isDir()) {
                    _t._checkDir(_path);
                } else {
                    _t._checkFile(_path);
                };
            };
            var __tmp__ = _d.readDir(((-1 : GoInt))), _list2:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_list2 != null ? _list2.length : ((0 : GoInt))) > ((0 : GoInt))) || (_err != null)) {
                _d.close();
                _t._errorf(((("%s: ReadDir(-1) at EOF = %d entries, %v, wanted 0 entries, nil" : GoString))), Go.toInterface(_dir), Go.toInterface((_list2 != null ? _list2.length : ((0 : GoInt)))), Go.toInterface(_err));
                return;
            };
            {
                var __tmp__ = _d.readDir(((1 : GoInt)));
                _list2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((_list2 != null ? _list2.length : ((0 : GoInt))) > ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _d.close();
                _t._errorf(((("%s: ReadDir(1) at EOF = %d entries, %v, wanted 0 entries, EOF" : GoString))), Go.toInterface(_dir), Go.toInterface((_list2 != null ? _list2.length : ((0 : GoInt)))), Go.toInterface(_err));
                return;
            };
            {
                var _err:stdgo.Error = _d.close();
                if (_err != null) {
                    _t._errorf(((("%s: Close: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
                };
            };
            _d.close();
            {
                _d = _t._openDir(_dir);
                if (_d == null) {
                    return;
                };
            };
            __deferstack__.unshift(() -> _d.close());
            {
                var __tmp__ = _d.readDir(((-1 : GoInt)));
                _list2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t._errorf(((("%s: second Open+ReadDir(-1): %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
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
            };
            _t._checkDirList(_dir, ((("first Open+ReadDir(-1) vs second Open+ReadDir(-1)" : GoString))), _list, _list2);
            {
                _d = _t._openDir(_dir);
                if (_d == null) {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
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
                };
            };
            __deferstack__.unshift(() -> _d.close());
            _list2 = ((null : Slice<stdgo.io.fs.Fs.DirEntry>));
            while (true) {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _n:GoInt = ((1 : GoInt));
                    if ((_list2 != null ? _list2.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _n = ((2 : GoInt));
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
                    };
                    var __tmp__ = _d.readDir(_n), _frag:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_frag != null ? _frag.length : ((0 : GoInt))) > _n) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _t._errorf(((("%s: third Open: ReadDir(%d) after %d: %d entries (too many)" : GoString))), Go.toInterface(_dir), Go.toInterface(_n), Go.toInterface((_list2 != null ? _list2.length : ((0 : GoInt)))), Go.toInterface((_frag != null ? _frag.length : ((0 : GoInt)))));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
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
                    };
                    _list2 = (_list2 != null ? _list2.__append__(..._frag.__toArray__()) : new Slice<stdgo.io.fs.Fs.DirEntry>(..._frag.__toArray__()));
                    if (_err == stdgo.io.Io.eof) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            break;
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
                    };
                    if (_err != null) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _t._errorf(((("%s: third Open: ReadDir(%d) after %d: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_n), Go.toInterface((_list2 != null ? _list2.length : ((0 : GoInt)))), Go.toInterface(_err));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
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
                    };
                    if (_n == ((0 : GoInt))) {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _t._errorf(((("%s: third Open: ReadDir(%d) after %d: 0 entries but nil error" : GoString))), Go.toInterface(_dir), Go.toInterface(_n), Go.toInterface((_list2 != null ? _list2.length : ((0 : GoInt)))));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
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
                    };
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
            };
            _t._checkDirList(_dir, ((("first Open+ReadDir(-1) vs third Open+ReadDir(1,2) loop" : GoString))), _list, _list2);
            {
                var __tmp__ = try {
                    { value : ((((_t._fsys.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.ReadDirFS)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.io.fs.Fs.ReadDirFS)), ok : false };
                }, _fsys = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var __tmp__ = _fsys.readDir(_dir), _list2:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            var __recover_exception__:AnyInterface = null;
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                _t._errorf(((("%s: fsys.ReadDir: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
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
                        };
                        _t._checkDirList(_dir, ((("first Open+ReadDir(-1) vs fsys.ReadDir" : GoString))), _list, _list2);
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor((_i + ((1 : GoInt))) < (_list2 != null ? _list2.length : ((0 : GoInt))), _i++, {
                                var __recover_exception__:AnyInterface = null;
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    if ((_list2 != null ? _list2[_i] : ((null : stdgo.io.fs.Fs.DirEntry))).name() >= (_list2 != null ? _list2[_i + ((1 : GoInt))] : ((null : stdgo.io.fs.Fs.DirEntry))).name()) {
                                        var __recover_exception__:AnyInterface = null;
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            _t._errorf(((("%s: fsys.ReadDir: list not sorted: %s before %s" : GoString))), Go.toInterface(_dir), Go.toInterface((_list2 != null ? _list2[_i] : ((null : stdgo.io.fs.Fs.DirEntry))).name()), Go.toInterface((_list2 != null ? _list2[_i + ((1 : GoInt))] : ((null : stdgo.io.fs.Fs.DirEntry))).name()));
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
                                    };
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
                            });
                        };
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
                };
            };
            {
                var __tmp__ = stdgo.io.fs.Fs.readDir(_t._fsys, _dir);
                _list2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t._errorf(((("%s: fs.ReadDir: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
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
            };
            _t._checkDirList(_dir, ((("first Open+ReadDir(-1) vs fs.ReadDir" : GoString))), _list, _list2);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor((_i + ((1 : GoInt))) < (_list2 != null ? _list2.length : ((0 : GoInt))), _i++, {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if ((_list2 != null ? _list2[_i] : ((null : stdgo.io.fs.Fs.DirEntry))).name() >= (_list2 != null ? _list2[_i + ((1 : GoInt))] : ((null : stdgo.io.fs.Fs.DirEntry))).name()) {
                            var __recover_exception__:AnyInterface = null;
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                _t._errorf(((("%s: fs.ReadDir: list not sorted: %s before %s" : GoString))), Go.toInterface(_dir), Go.toInterface((_list2 != null ? _list2[_i] : ((null : stdgo.io.fs.Fs.DirEntry))).name()), Go.toInterface((_list2 != null ? _list2[_i + ((1 : GoInt))] : ((null : stdgo.io.fs.Fs.DirEntry))).name()));
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
                        };
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
                });
            };
            _t._checkGlob(_dir, _list);
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
    @:keep
    public static function _openDir( _t:T_fsTester, _dir:GoString):stdgo.io.fs.Fs.ReadDirFile {
        var __tmp__ = _t._fsys.open(_dir), _f:stdgo.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t._errorf(((("%s: Open: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
            return ((null : stdgo.io.fs.Fs.ReadDirFile));
        };
        var __tmp__ = try {
            { value : ((((_f.__underlying__().value : Dynamic)) : stdgo.io.fs.Fs.ReadDirFile)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.fs.Fs.ReadDirFile)), ok : false };
        }, _d = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _f.close();
            _t._errorf(((("%s: Open returned File type %T, not a fs.ReadDirFile" : GoString))), Go.toInterface(_dir), Go.toInterface(_f));
            return ((null : stdgo.io.fs.Fs.ReadDirFile));
        };
        return _d;
    }
    /**
        // errorf adds an error line to errText.
    **/
    @:keep
    public static function _errorf( _t:T_fsTester, _format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(..._args);
        if ((_t._errText != null ? _t._errText.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _t._errText = (_t._errText != null ? _t._errText.__append__(((((("\n" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("\n" : GoString))).code : GoRune))));
        };
        _t._errText = (_t._errText != null ? _t._errText.__append__(...stdgo.fmt.Fmt.sprintf(_format, ..._args.__toArray__()).__toArray__()) : new Slice<GoUInt8>(...stdgo.fmt.Fmt.sprintf(_format, ..._args.__toArray__()).__toArray__()));
    }
}
class T_fsTester_wrapper {
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using open.
    **/
    @:keep
    public var _checkBadPath : (GoString, GoString, GoString -> Error) -> Void = null;
    /**
        // checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.
    **/
    @:keep
    public var _checkOpen : GoString -> Void = null;
    @:keep
    public var _checkFileRead : (GoString, GoString, Slice<GoByte>, Slice<GoByte>) -> Void = null;
    /**
        // checkFile checks that basic file reading works correctly.
    **/
    @:keep
    public var _checkFile : GoString -> Void = null;
    /**
        // checkDirList checks that two directory lists contain the same files and file info.
        // The order of the lists need not match.
    **/
    @:keep
    public var _checkDirList : (GoString, GoString, Slice<stdgo.io.fs.Fs.DirEntry>, Slice<stdgo.io.fs.Fs.DirEntry>) -> Void = null;
    /**
        // checkStat checks that a direct stat of path matches entry,
        // which was found in the parent's directory listing.
    **/
    @:keep
    public var _checkStat : (GoString, stdgo.io.fs.Fs.DirEntry) -> Void = null;
    /**
        // checkGlob checks that various glob patterns work if the file system implements GlobFS.
    **/
    @:keep
    public var _checkGlob : (GoString, Slice<stdgo.io.fs.Fs.DirEntry>) -> Void = null;
    /**
        // checkDir checks the directory dir, which is expected to exist
        // (it is either the root or was found in a directory listing with IsDir true).
    **/
    @:keep
    public var _checkDir : GoString -> Void = null;
    @:keep
    public var _openDir : GoString -> stdgo.io.fs.Fs.ReadDirFile = null;
    /**
        // errorf adds an error line to errText.
    **/
    @:keep
    public var _errorf : (GoString, haxe.Rest<AnyInterface>) -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_fsTester;
}
@:keep class MapFS_static_extension {
    @:keep
    public static function sub( _fsys:MapFS, _dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : Error; } {
        return stdgo.io.fs.Fs.sub({
            final __self__ = new T_noSub_wrapper(((new T_noSub(_fsys) : T_noSub)));
            __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return ((new T_noSub(_fsys) : T_noSub)).glob(_pattern) #else null #end;
            __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return ((new T_noSub(_fsys) : T_noSub)).open(_name) #else null #end;
            __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return ((new T_noSub(_fsys) : T_noSub)).readDir(_name) #else null #end;
            __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new T_noSub(_fsys) : T_noSub)).readFile(_name) #else null #end;
            __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((new T_noSub(_fsys) : T_noSub)).stat(_name) #else null #end;
            __self__.sub = #if !macro function():Void ((new T_noSub(_fsys) : T_noSub)).sub() #else null #end;
            __self__;
        }, _dir);
    }
    @:keep
    public static function glob( _fsys:MapFS, _pattern:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        return stdgo.io.fs.Fs.glob({
            final __self__ = new T_fsOnly_wrapper(((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return ((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)).open(_name) #else null #end;
            __self__;
        }, _pattern);
    }
    @:keep
    public static function readDir( _fsys:MapFS, _name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } {
        return stdgo.io.fs.Fs.readDir({
            final __self__ = new T_fsOnly_wrapper(((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return ((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)).open(_name) #else null #end;
            __self__;
        }, _name);
    }
    @:keep
    public static function stat( _fsys:MapFS, _name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return stdgo.io.fs.Fs.stat({
            final __self__ = new T_fsOnly_wrapper(((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return ((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)).open(_name) #else null #end;
            __self__;
        }, _name);
    }
    @:keep
    public static function readFile( _fsys:MapFS, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return stdgo.io.fs.Fs.readFile({
            final __self__ = new T_fsOnly_wrapper(((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)));
            __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return ((new T_fsOnly({
                final __self__ = new MapFS_wrapper(_fsys);
                __self__.glob = #if !macro function(_pattern:GoString):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return _fsys.glob(_pattern) #else null #end;
                __self__.open = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return _fsys.open(_name) #else null #end;
                __self__.readDir = #if !macro function(_name:GoString):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return _fsys.readDir(_name) #else null #end;
                __self__.readFile = #if !macro function(_name:GoString):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _fsys.readFile(_name) #else null #end;
                __self__.stat = #if !macro function(_name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return _fsys.stat(_name) #else null #end;
                __self__.sub = #if !macro function(_dir:GoString):{ var _0 : stdgo.io.fs.Fs.FS; var _1 : stdgo.Error; } return _fsys.sub(_dir) #else null #end;
                __self__;
            }) : T_fsOnly)).open(_name) #else null #end;
            __self__;
        }, _name);
    }
    /**
        // Open opens the named file.
    **/
    @:keep
    public static function open( _fsys:MapFS, _name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } {
        if (!stdgo.io.fs.Fs.validPath(_name)) {
            return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : {
                final __self__ = new stdgo.io.fs.Fs.PathError_wrapper((({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)));
                __self__.error = #if !macro function():GoString return (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)).error() #else null #end;
                __self__.timeout = #if !macro function():Bool return (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)).timeout() #else null #end;
                __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)).unwrap() #else null #end;
                __self__;
            } };
        };
        var _file = (_fsys != null ? _fsys[_name] : null);
        if ((_file != null) && ((_file.mode & (("2147483648" : GoUInt32))) == ((0 : GoUInt32)))) {
            return { _0 : {
                final __self__ = new T_openMapFile_wrapper(((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)));
                __self__.close = #if !macro function():stdgo.Error return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).close() #else null #end;
                __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).info() #else null #end;
                __self__.isDir = #if !macro function():Bool return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).isDir() #else null #end;
                __self__.modTime = #if !macro function():stdgo.time.Time.Time return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).modTime() #else null #end;
                __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).mode() #else null #end;
                __self__.name = #if !macro function():GoString return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).name() #else null #end;
                __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).read(_b) #else null #end;
                __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _offset:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).readAt(_b, _offset) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).size() #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).stat() #else null #end;
                __self__.sys = #if !macro function():AnyInterface return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).sys() #else null #end;
                __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return ((new T_openMapFile(_name, ((new T_mapFileInfo(stdgo.path.Path.base(_name), _file) : T_mapFileInfo)), ((0 : GoInt64))) : T_openMapFile)).type() #else null #end;
                __self__;
            }, _1 : ((null : stdgo.Error)) };
        };
        var _list:Slice<T_mapFileInfo> = ((null : Slice<T_mapFileInfo>));
        var _elem:GoString = (("" : GoString));
        var _need:GoMap<GoString, Bool> = ((new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) : GoMap<GoString, Bool>));
        if (_name == ((("." : GoString)))) {
            _elem = ((("." : GoString)));
            for (_fname => _f in _fsys) {
                var _i:GoInt = stdgo.strings.Strings.index(_fname, ((("/" : GoString))));
                if (_i < ((0 : GoInt))) {
                    if (_fname != ((("." : GoString)))) {
                        _list = (_list != null ? _list.__append__(((new T_mapFileInfo(_fname, _f) : T_mapFileInfo))) : new Slice<T_mapFileInfo>(((new T_mapFileInfo(_fname, _f) : T_mapFileInfo))));
                    };
                } else {
                    if (_need != null) _need[((_fname.__slice__(0, _i) : GoString))] = true;
                };
            };
        } else {
            _elem = ((_name.__slice__(stdgo.strings.Strings.lastIndex(_name, ((("/" : GoString)))) + ((1 : GoInt))) : GoString));
            var _prefix:GoString = _name + ((("/" : GoString)));
            for (_fname => _f in _fsys) {
                if (stdgo.strings.Strings.hasPrefix(_fname, _prefix)) {
                    var _felem:GoString = ((_fname.__slice__((_prefix != null ? _prefix.length : ((0 : GoInt)))) : GoString));
                    var _i:GoInt = stdgo.strings.Strings.index(_felem, ((("/" : GoString))));
                    if (_i < ((0 : GoInt))) {
                        _list = (_list != null ? _list.__append__(((new T_mapFileInfo(_felem, _f) : T_mapFileInfo))) : new Slice<T_mapFileInfo>(((new T_mapFileInfo(_felem, _f) : T_mapFileInfo))));
                    } else {
                        if (_need != null) _need[((_fname.__slice__((_prefix != null ? _prefix.length : ((0 : GoInt))), (_prefix != null ? _prefix.length : ((0 : GoInt))) + _i) : GoString))] = true;
                    };
                };
            };
            if (((_file == null) && (_list == null)) && ((_need != null ? _need.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : {
                    final __self__ = new stdgo.io.fs.Fs.PathError_wrapper((({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)));
                    __self__.error = #if !macro function():GoString return (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)).error() #else null #end;
                    __self__.timeout = #if !macro function():Bool return (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)).timeout() #else null #end;
                    __self__.unwrap = #if !macro function():stdgo.Error return (({ op : ((("open" : GoString))), path : _name, err : stdgo.io.fs.Fs.errNotExist } : stdgo.io.fs.Fs.PathError)).unwrap() #else null #end;
                    __self__;
                } };
            };
        };
        for (_0 => _fi in _list) {
            if (_need != null) _need.__remove__(_fi._name);
        };
        for (_name => _ in _need) {
            _list = (_list != null ? _list.__append__(((new T_mapFileInfo(_name, (({ mode : (("2147483648" : GoUInt32)), data : ((null : Slice<GoUInt8>)), modTime : new stdgo.time.Time.Time(), sys : ((null : AnyInterface)) } : MapFile))) : T_mapFileInfo))) : new Slice<T_mapFileInfo>(((new T_mapFileInfo(_name, (({ mode : (("2147483648" : GoUInt32)), data : ((null : Slice<GoUInt8>)), modTime : new stdgo.time.Time.Time(), sys : ((null : AnyInterface)) } : MapFile))) : T_mapFileInfo))));
        };
        stdgo.sort.Sort.slice(Go.toInterface(_list), function(_i:GoInt, _j:GoInt):Bool {
            return (_list != null ? _list[_i] : new T_mapFileInfo())._name < (_list != null ? _list[_j] : new T_mapFileInfo())._name;
        });
        if (_file == null) {
            _file = (({ mode : (("2147483648" : GoUInt32)), data : ((null : Slice<GoUInt8>)), modTime : new stdgo.time.Time.Time(), sys : ((null : AnyInterface)) } : MapFile));
        };
        return { _0 : {
            final __self__ = new T_mapDir_wrapper(((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)));
            __self__.close = #if !macro function():stdgo.Error return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).close() #else null #end;
            __self__.info = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).info() #else null #end;
            __self__.isDir = #if !macro function():Bool return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).isDir() #else null #end;
            __self__.modTime = #if !macro function():stdgo.time.Time.Time return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).modTime() #else null #end;
            __self__.mode = #if !macro function():stdgo.io.fs.Fs.FileMode return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).mode() #else null #end;
            __self__.name = #if !macro function():GoString return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).name() #else null #end;
            __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).read(_b) #else null #end;
            __self__.readDir = #if !macro function(_count:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).readDir(_count) #else null #end;
            __self__.size = #if !macro function():GoInt64 return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).size() #else null #end;
            __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).stat() #else null #end;
            __self__.sys = #if !macro function():AnyInterface return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).sys() #else null #end;
            __self__.type = #if !macro function():stdgo.io.fs.Fs.FileMode return ((new T_mapDir(_name, ((new T_mapFileInfo(_elem, _file) : T_mapFileInfo)), _list, ((0 : GoInt))) : T_mapDir)).type() #else null #end;
            __self__;
        }, _1 : ((null : stdgo.Error)) };
    }
}
class MapFS_wrapper {
    @:keep
    public var sub : GoString -> { var _0 : stdgo.io.fs.Fs.FS; var _1 : Error; } = null;
    @:keep
    public var glob : GoString -> { var _0 : Slice<GoString>; var _1 : Error; } = null;
    @:keep
    public var readDir : GoString -> { var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : Error; } = null;
    @:keep
    public var stat : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    @:keep
    public var readFile : GoString -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // Open opens the named file.
    **/
    @:keep
    public var open : GoString -> { var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : MapFS;
}
