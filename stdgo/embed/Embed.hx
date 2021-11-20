package stdgo.embed;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class FS {
    public function readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _f = this.__copy__();
        var __tmp__ = _f.open(_name), _file:io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        var __tmp__ = try {
            { value : ((_file.__underlying__().value : T_openFile)), ok : true };
        } catch(_) {
            { value : new Pointer<T_openFile>().nil(), ok : false };
        }, _ofile = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : Go.pointer((({ op : "read", path : _name, err : stdgo.errors.Errors.new_("is a directory") } : io.fs.Fs.PathError))).value };
        };
        return { _0 : ((_ofile.value._f.value._data : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public function readDir(_name:GoString):{ var _0 : Slice<io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _f = this.__copy__();
        var __tmp__ = _f.open(_name), _file:io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<io.fs.Fs.DirEntry>().nil(), _1 : _err };
        };
        var __tmp__ = try {
            { value : ((_file.__underlying__().value : T_openDir)), ok : true };
        } catch(_) {
            { value : new Pointer<T_openDir>().nil(), ok : false };
        }, _dir = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : new Slice<io.fs.Fs.DirEntry>().nil(), _1 : Go.pointer((({ op : "read", path : _name, err : stdgo.errors.Errors.new_("not a directory") } : io.fs.Fs.PathError))).value };
        };
        var _list:Slice<io.fs.Fs.DirEntry> = new Slice<io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_dir.value._files.length : GoInt)).toBasic()) ((null : io.fs.Fs.DirEntry))]);
        {
            var _i;
            for (_obj in _list.keyValueIterator()) {
                _i = _obj.key;
                _list[_i] = Go.pointer(_dir.value._files[_i]).value;
            };
        };
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    public function open(_name:GoString):{ var _0 : io.fs.Fs.File; var _1 : Error; } {
        var _f = this.__copy__();
        var _file:Pointer<T_file> = _f._lookup(_name);
        if (_file == null || _file.isNil()) {
            return { _0 : ((null : io.fs.Fs.File)), _1 : Go.pointer((({ op : "open", path : _name, err : io.fs.Fs.errNotExist } : io.fs.Fs.PathError))).value };
        };
        if (_file.value.isDir()) {
            return { _0 : Go.pointer(new T_openDir(_file, _f._readDir(_name), ((0 : GoInt)))).value, _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.pointer(new T_openFile(_file, ((0 : GoInt64)))).value, _1 : ((null : stdgo.Error)) };
    }
    public function _readDir(_dir:GoString):Slice<T_file> {
        var _f = this.__copy__();
        if (_f._files == null || _f._files.isNil()) {
            return new Slice<T_file>().nil();
        };
        var _files:Slice<T_file> = _f._files.value;
        var _i:GoInt = _sortSearch(_files.length, function(_i:GoInt):Bool {
            var __tmp__ = _split(_files[_i]._name), _idir:GoString = __tmp__._0, _:GoString = __tmp__._1, _:Bool = __tmp__._2;
            return _idir >= _dir;
        });
        var _j:GoInt = _sortSearch(_files.length, function(_j:GoInt):Bool {
            var __tmp__ = _split(_files[_j]._name), _jdir:GoString = __tmp__._0, _:GoString = __tmp__._1, _:Bool = __tmp__._2;
            return _jdir > _dir;
        });
        return _files.__slice__(_i, _j);
    }
    public function _lookup(_name:GoString):Pointer<T_file> {
        var _f = this.__copy__();
        if (!io.fs.Fs.validPath(_name)) {
            return new Pointer<T_file>().nil();
        };
        if (_name == (("." : GoString))) {
            return _dotFile;
        };
        if (_f._files == null || _f._files.isNil()) {
            return new Pointer<T_file>().nil();
        };
        var __tmp__ = _split(_name), _dir:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _:Bool = __tmp__._2;
        var _files:Slice<T_file> = _f._files.value;
        var _i:GoInt = _sortSearch(_files.length, function(_i:GoInt):Bool {
            var __tmp__ = _split(_files[_i]._name), _idir:GoString = __tmp__._0, _ielem:GoString = __tmp__._1, _:Bool = __tmp__._2;
            return _idir > _dir || _idir == _dir && _ielem >= _elem;
        });
        if (_i < _files.length && _trimSlash(_files[_i]._name) == _name) {
            return Go.pointer(_files[_i]);
        };
        return new Pointer<T_file>().nil();
    }
    public var _files : Pointer<Slice<T_file>> = new Pointer<Slice<T_file>>().nil();
    public function new(?_files:Pointer<Slice<T_file>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_files) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FS(_files);
    }
    public function __set__(__tmp__) {
        this._files = __tmp__._files;
        return this;
    }
}
@:structInit class T_file {
    public function mode():io.fs.Fs.FileMode {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value.isDir()) {
            return new io.fs.Fs.FileMode(io.fs.Fs.modeDir.__t__ | ((365 : GoUInt32)));
        };
        return new io.fs.Fs.FileMode(((292 : GoUInt32)));
    }
    public function info():{ var _0 : io.fs.Fs.FileInfo; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _f.value, _1 : ((null : stdgo.Error)) };
    }
    public function type():io.fs.Fs.FileMode {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value.mode().type();
    }
    public function sys():AnyInterface {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((null : AnyInterface));
    }
    public function isDir():Bool {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _split(_f.value._name), _:GoString = __tmp__._0, _:GoString = __tmp__._1, _isDir:Bool = __tmp__._2;
        return _isDir;
    }
    public function modTime():stdgo.time.Time.Time {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new stdgo.time.Time.Time().__copy__();
    }
    public function size():GoInt64 {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((_f.value._data.length : GoInt64));
    }
    public function name():GoString {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _split(_f.value._name), _:GoString = __tmp__._0, _elem:GoString = __tmp__._1, _:Bool = __tmp__._2;
        return _elem;
    }
    public var _name : GoString = (("" : GoString));
    public var _data : GoString = (("" : GoString));
    public var _hash : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public function new(?_name:GoString, ?_data:GoString, ?_hash:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_name) + " " + Go.string(_data) + " " + Go.string(_hash) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_file(_name, _data, _hash);
    }
    public function __set__(__tmp__) {
        this._name = __tmp__._name;
        this._data = __tmp__._data;
        this._hash = __tmp__._hash;
        return this;
    }
}
@:structInit class T_openFile {
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_whence == ((0 : GoInt))) {} else if (_whence == ((1 : GoInt))) {
            _offset = _offset + (_f.value._offset);
        } else if (_whence == ((2 : GoInt))) {
            _offset = _offset + (((_f.value._f.value._data.length : GoInt64)));
        };
        if (_offset < ((0 : GoInt64)) || _offset > ((_f.value._f.value._data.length : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : Go.pointer((({ op : "seek", path : _f.value._f.value._name, err : io.fs.Fs.errInvalid } : io.fs.Fs.PathError))).value };
        };
        _f.value._offset = _offset;
        return { _0 : _offset, _1 : ((null : stdgo.Error)) };
    }
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value._offset >= ((_f.value._f.value._data.length : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        if (_f.value._offset < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : Go.pointer((({ op : "read", path : _f.value._f.value._name, err : io.fs.Fs.errInvalid } : io.fs.Fs.PathError))).value };
        };
        var _n:GoInt = Go.copy(_b, _f.value._f.value._data.__slice__(_f.value._offset));
        _f.value._offset = _f.value._offset + (((_n : GoInt64)));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public function stat():{ var _0 : io.fs.Fs.FileInfo; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _f.value._f.value, _1 : ((null : stdgo.Error)) };
    }
    public function close():Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((null : stdgo.Error));
    }
    public var _f : Pointer<T_file> = new Pointer<T_file>().nil();
    public var _offset : GoInt64 = ((0 : GoInt64));
    public function new(?_f:Pointer<T_file>, ?_offset:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_f) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openFile(_f, _offset);
    }
    public function __set__(__tmp__) {
        this._f = __tmp__._f;
        this._offset = __tmp__._offset;
        return this;
    }
}
@:structInit class T_openDir {
    public function readDir(_count:GoInt):{ var _0 : Slice<io.fs.Fs.DirEntry>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = _d.value._files.length - _d.value._offset;
        if (_n == ((0 : GoInt))) {
            if (_count <= ((0 : GoInt))) {
                return { _0 : new Slice<io.fs.Fs.DirEntry>().nil(), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : new Slice<io.fs.Fs.DirEntry>().nil(), _1 : stdgo.io.Io.eof };
        };
        if (_count > ((0 : GoInt)) && _n > _count) {
            _n = _count;
        };
        var _list:Slice<io.fs.Fs.DirEntry> = new Slice<io.fs.Fs.DirEntry>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : io.fs.Fs.DirEntry))]);
        {
            var _i;
            for (_obj in _list.keyValueIterator()) {
                _i = _obj.key;
                _list[_i] = Go.pointer(_d.value._files[_d.value._offset + _i]).value;
            };
        };
        _d.value._offset = _d.value._offset + (_n);
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    public function read(arg0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : ((0 : GoInt)), _1 : Go.pointer((({ op : "read", path : _d.value._f.value._name, err : stdgo.errors.Errors.new_("is a directory") } : io.fs.Fs.PathError))).value };
    }
    public function stat():{ var _0 : io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _d.value._f.value, _1 : ((null : stdgo.Error)) };
    }
    public function close():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((null : stdgo.Error));
    }
    public var _f : Pointer<T_file> = new Pointer<T_file>().nil();
    public var _files : Slice<T_file> = new Slice<T_file>().nil();
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_f:Pointer<T_file>, ?_files:Slice<T_file>, ?_offset:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_f) + " " + Go.string(_files) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_f, _files, _offset);
    }
    public function __set__(__tmp__) {
        this._f = __tmp__._f;
        this._files = __tmp__._files;
        this._offset = __tmp__._offset;
        return this;
    }
}
var _0 : io.fs.Fs.ReadDirFS = new FS().__copy__();
var _1 : io.fs.Fs.ReadFileFS = new FS().__copy__();
var _2 : io.fs.Fs.FileInfo = ((new Pointer<T_file>().nil() : Pointer<T_file>)).value;
var _3 : io.fs.Fs.DirEntry = ((new Pointer<T_file>().nil() : Pointer<T_file>)).value;
var _dotFile : Pointer<T_file> = Go.pointer((({ _name : "./", _data : "", _hash : new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]) } : T_file)));
/**
    // split splits the name into dir and elem as described in the
    // comment in the FS struct above. isDir reports whether the
    // final trailing slash was present, indicating that name is a directory.
**/
function _split(_name:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        var _dir:GoString = (("" : GoString)), _elem:GoString = (("" : GoString)), _isDir:Bool = false;
        if (_name[_name.length - ((1 : GoInt))] == (("/".code : GoRune))) {
            _isDir = true;
            _name = _name.__slice__(0, _name.length - ((1 : GoInt)));
        };
        var _i:GoInt = _name.length - ((1 : GoInt));
        while (_i >= ((0 : GoInt)) && _name[_i] != (("/".code : GoRune))) {
            _i--;
        };
        if (_i < ((0 : GoInt))) {
            return { _0 : ".", _1 : _name, _2 : _isDir };
        };
        return { _0 : _name.__slice__(0, _i), _1 : _name.__slice__(_i + ((1 : GoInt))), _2 : _isDir };
    }
/**
    // trimSlash trims a trailing slash from name, if present,
    // returning the possibly shortened name.
**/
function _trimSlash(_name:GoString):GoString {
        if (_name.length > ((0 : GoInt)) && _name[_name.length - ((1 : GoInt))] == (("/".code : GoRune))) {
            return _name.__slice__(0, _name.length - ((1 : GoInt)));
        };
        return _name;
    }
/**
    // sortSearch is like sort.Search, avoiding an import.
**/
function _sortSearch(_n:GoInt, _f:GoInt -> Bool):GoInt {
        var _i:GoInt = ((0 : GoInt)), _j:GoInt = _n;
        while (_i < _j) {
            var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
            if (!_f(_h)) {
                _i = _h + ((1 : GoInt));
            } else {
                _j = _h;
            };
        };
        return _i;
    }
class FS_extension_fields {
    public function _lookup(__tmp__, _name:GoString):Pointer<T_file> return __tmp__._lookup(_name);
    public function _readDir(__tmp__, _dir:GoString):Slice<T_file> return __tmp__._readDir(_dir);
    public function open(__tmp__, _name:GoString):{ var _0 : io.fs.Fs.File; var _1 : Error; } return __tmp__.open(_name);
    public function readDir(__tmp__, _name:GoString):{ var _0 : Slice<io.fs.Fs.DirEntry>; var _1 : Error; } return __tmp__.readDir(_name);
    public function readFile(__tmp__, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.readFile(_name);
}
class T_file_extension_fields {
    public function name(__tmp__):GoString return __tmp__.name();
    public function size(__tmp__):GoInt64 return __tmp__.size();
    public function modTime(__tmp__):stdgo.time.Time.Time return __tmp__.modTime();
    public function isDir(__tmp__):Bool return __tmp__.isDir();
    public function sys(__tmp__):AnyInterface return __tmp__.sys();
    public function type(__tmp__):io.fs.Fs.FileMode return __tmp__.type();
    public function info(__tmp__):{ var _0 : io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.info();
    public function mode(__tmp__):io.fs.Fs.FileMode return __tmp__.mode();
}
class T_openFile_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function stat(__tmp__):{ var _0 : io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.stat();
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
    public function seek(__tmp__, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.seek(_offset, _whence);
}
class T_openDir_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function stat(__tmp__):{ var _0 : io.fs.Fs.FileInfo; var _1 : Error; } return __tmp__.stat();
    public function read(__tmp__, arg0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(arg0);
    public function readDir(__tmp__, _count:GoInt):{ var _0 : Slice<io.fs.Fs.DirEntry>; var _1 : Error; } return __tmp__.readDir(_count);
}
