package stdgo;
final modeDir : FileMode = stdgo._internal.io.fs.Fs_modedir.modeDir;
final modeAppend = stdgo._internal.io.fs.Fs_modeappend.modeAppend;
final modeExclusive = stdgo._internal.io.fs.Fs_modeexclusive.modeExclusive;
final modeTemporary = stdgo._internal.io.fs.Fs_modetemporary.modeTemporary;
final modeSymlink = stdgo._internal.io.fs.Fs_modesymlink.modeSymlink;
final modeDevice = stdgo._internal.io.fs.Fs_modedevice.modeDevice;
final modeNamedPipe = stdgo._internal.io.fs.Fs_modenamedpipe.modeNamedPipe;
final modeSocket = stdgo._internal.io.fs.Fs_modesocket.modeSocket;
final modeSetuid = stdgo._internal.io.fs.Fs_modesetuid.modeSetuid;
final modeSetgid = stdgo._internal.io.fs.Fs_modesetgid.modeSetgid;
final modeCharDevice = stdgo._internal.io.fs.Fs_modechardevice.modeCharDevice;
final modeSticky = stdgo._internal.io.fs.Fs_modesticky.modeSticky;
final modeIrregular = stdgo._internal.io.fs.Fs_modeirregular.modeIrregular;
final modeType : FileMode = stdgo._internal.io.fs.Fs_modetype.modeType;
final modePerm : FileMode = stdgo._internal.io.fs.Fs_modeperm.modePerm;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.io.fs.Fs_errinvalid.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errinvalid.errInvalid = (v : stdgo.Error);
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.io.fs.Fs_errpermission.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errpermission.errPermission = (v : stdgo.Error);
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.io.fs.Fs_errexist.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errexist.errExist = (v : stdgo.Error);
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.io.fs.Fs_errnotexist.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errnotexist.errNotExist = (v : stdgo.Error);
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.io.fs.Fs_errclosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errclosed.errClosed = (v : stdgo.Error);
        return v;
    }
var skipDir(get, set) : stdgo.Error;
private function get_skipDir():stdgo.Error return stdgo._internal.io.fs.Fs_skipdir.skipDir;
private function set_skipDir(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_skipdir.skipDir = (v : stdgo.Error);
        return v;
    }
var skipAll(get, set) : stdgo.Error;
private function get_skipAll():stdgo.Error return stdgo._internal.io.fs.Fs_skipall.skipAll;
private function set_skipAll(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_skipall.skipAll = (v : stdgo.Error);
        return v;
    }
class FS_static_extension {
    static public function open(t:stdgo._internal.io.fs.Fs_fs.FS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_fs_static_extension.FS_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract FS(stdgo._internal.io.fs.Fs_fs.FS) from stdgo._internal.io.fs.Fs_fs.FS to stdgo._internal.io.fs.Fs_fs.FS {
    @:from
    static function fromHaxeInterface(x:{ function open(_name:String):stdgo.Tuple<File, stdgo.Error>; }):FS {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:FS = { open : _0 -> x.open(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class File_static_extension {
    static public function close(t:stdgo._internal.io.fs.Fs_file.File):stdgo.Error {
        return stdgo._internal.io.fs.Fs_file_static_extension.File_static_extension.close(t);
    }
    static public function read(t:stdgo._internal.io.fs.Fs_file.File, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.fs.Fs_file_static_extension.File_static_extension.read(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(t:stdgo._internal.io.fs.Fs_file.File):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs_file_static_extension.File_static_extension.stat(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract File(stdgo._internal.io.fs.Fs_file.File) from stdgo._internal.io.fs.Fs_file.File to stdgo._internal.io.fs.Fs_file.File {
    @:from
    static function fromHaxeInterface(x:{ function stat():stdgo.Tuple<FileInfo, stdgo.Error>; function read(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function close():stdgo.Error; }):File {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:File = { stat : () -> x.stat(), read : _0 -> x.read([for (i in _0) i]), close : () -> x.close(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class DirEntry_static_extension {
    static public function info(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs_direntry_static_extension.DirEntry_static_extension.info(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):FileMode {
        return stdgo._internal.io.fs.Fs_direntry_static_extension.DirEntry_static_extension.type(t);
    }
    static public function isDir(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):Bool {
        return stdgo._internal.io.fs.Fs_direntry_static_extension.DirEntry_static_extension.isDir(t);
    }
    static public function name(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):String {
        return stdgo._internal.io.fs.Fs_direntry_static_extension.DirEntry_static_extension.name(t);
    }
}
@:forward abstract DirEntry(stdgo._internal.io.fs.Fs_direntry.DirEntry) from stdgo._internal.io.fs.Fs_direntry.DirEntry to stdgo._internal.io.fs.Fs_direntry.DirEntry {
    @:from
    static function fromHaxeInterface(x:{ function name():String; function isDir():Bool; function type():FileMode; function info():stdgo.Tuple<FileInfo, stdgo.Error>; }):DirEntry {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:DirEntry = { name : () -> x.name(), isDir : () -> x.isDir(), type : () -> x.type(), info : () -> x.info(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadDirFile_static_extension {
    static public function readDir(t:stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile, _n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.fs.Fs_readdirfile_static_extension.ReadDirFile_static_extension.readDir(t, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract ReadDirFile(stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile) from stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile to stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile {
    @:from
    static function fromHaxeInterface(x:{ function readDir(_n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error>; }):ReadDirFile {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadDirFile = { readDir : _0 -> x.readDir(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class FileInfo_static_extension {
    static public function sys(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.AnyInterface {
        return stdgo._internal.io.fs.Fs_fileinfo_static_extension.FileInfo_static_extension.sys(t);
    }
    static public function isDir(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):Bool {
        return stdgo._internal.io.fs.Fs_fileinfo_static_extension.FileInfo_static_extension.isDir(t);
    }
    static public function modTime(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.io.fs.Fs_fileinfo_static_extension.FileInfo_static_extension.modTime(t);
    }
    static public function mode(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):FileMode {
        return stdgo._internal.io.fs.Fs_fileinfo_static_extension.FileInfo_static_extension.mode(t);
    }
    static public function size(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):haxe.Int64 {
        return stdgo._internal.io.fs.Fs_fileinfo_static_extension.FileInfo_static_extension.size(t);
    }
    static public function name(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):String {
        return stdgo._internal.io.fs.Fs_fileinfo_static_extension.FileInfo_static_extension.name(t);
    }
}
@:forward abstract FileInfo(stdgo._internal.io.fs.Fs_fileinfo.FileInfo) from stdgo._internal.io.fs.Fs_fileinfo.FileInfo to stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
    @:from
    static function fromHaxeInterface(x:{ function name():String; function size():haxe.Int64; function mode():FileMode; function modTime():stdgo._internal.time.Time_time.Time; function isDir():Bool; function sys():stdgo.AnyInterface; }):FileInfo {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:FileInfo = { name : () -> x.name(), size : () -> x.size(), mode : () -> x.mode(), modTime : () -> x.modTime(), isDir : () -> x.isDir(), sys : () -> x.sys(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class GlobFS_static_extension {
    static public function glob(t:stdgo._internal.io.fs.Fs_globfs.GlobFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_globfs_static_extension.GlobFS_static_extension.glob(t, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract GlobFS(stdgo._internal.io.fs.Fs_globfs.GlobFS) from stdgo._internal.io.fs.Fs_globfs.GlobFS to stdgo._internal.io.fs.Fs_globfs.GlobFS {
    @:from
    static function fromHaxeInterface(x:{ function glob(_pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>; }):GlobFS {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:GlobFS = { glob : _0 -> x.glob(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadDirFS_static_extension {
    static public function readDir(t:stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_readdirfs_static_extension.ReadDirFS_static_extension.readDir(t, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract ReadDirFS(stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS) from stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS to stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS {
    @:from
    static function fromHaxeInterface(x:{ function readDir(_name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error>; }):ReadDirFS {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadDirFS = { readDir : _0 -> x.readDir(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ReadFileFS_static_extension {
    static public function readFile(t:stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_readfilefs_static_extension.ReadFileFS_static_extension.readFile(t, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract ReadFileFS(stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS) from stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS to stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS {
    @:from
    static function fromHaxeInterface(x:{ function readFile(_name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):ReadFileFS {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ReadFileFS = { readFile : _0 -> x.readFile(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class StatFS_static_extension {
    static public function stat(t:stdgo._internal.io.fs.Fs_statfs.StatFS, _name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_statfs_static_extension.StatFS_static_extension.stat(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract StatFS(stdgo._internal.io.fs.Fs_statfs.StatFS) from stdgo._internal.io.fs.Fs_statfs.StatFS to stdgo._internal.io.fs.Fs_statfs.StatFS {
    @:from
    static function fromHaxeInterface(x:{ function stat(_name:String):stdgo.Tuple<FileInfo, stdgo.Error>; }):StatFS {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:StatFS = { stat : _0 -> x.stat(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class SubFS_static_extension {
    static public function sub(t:stdgo._internal.io.fs.Fs_subfs.SubFS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_subfs_static_extension.SubFS_static_extension.sub(t, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract SubFS(stdgo._internal.io.fs.Fs_subfs.SubFS) from stdgo._internal.io.fs.Fs_subfs.SubFS to stdgo._internal.io.fs.Fs_subfs.SubFS {
    @:from
    static function fromHaxeInterface(x:{ function sub(_dir:String):stdgo.Tuple<FS, stdgo.Error>; }):SubFS {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:SubFS = { sub : _0 -> x.sub(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_0_static_extension {
    static public function timeout(t:stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0):Bool {
        return stdgo._internal.io.fs.Fs_t__interface_0_static_extension.T__interface_0_static_extension.timeout(t);
    }
}
@:dox(hide) @:forward abstract T__interface_0(stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0) from stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0 to stdgo._internal.io.fs.Fs_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function timeout():Bool; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { timeout : () -> x.timeout(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.io.fs.Fs.PathError_static_extension) abstract PathError(stdgo._internal.io.fs.Fs_patherror.PathError) from stdgo._internal.io.fs.Fs_patherror.PathError to stdgo._internal.io.fs.Fs_patherror.PathError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?path:String, ?err:stdgo.Error) this = new stdgo._internal.io.fs.Fs_patherror.PathError((op : stdgo.GoString), (path : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.fs.Fs.T_dirInfo_static_extension) @:dox(hide) abstract T_dirInfo(stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo) from stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo to stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo {
    public var _fileInfo(get, set) : FileInfo;
    function get__fileInfo():FileInfo return this._fileInfo;
    function set__fileInfo(v:FileInfo):FileInfo {
        this._fileInfo = v;
        return v;
    }
    public function new(?_fileInfo:FileInfo) this = new stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo(_fileInfo);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.fs.Fs.T_subFS_static_extension) @:dox(hide) abstract T_subFS(stdgo._internal.io.fs.Fs_t_subfs.T_subFS) from stdgo._internal.io.fs.Fs_t_subfs.T_subFS to stdgo._internal.io.fs.Fs_t_subfs.T_subFS {
    public var _fsys(get, set) : FS;
    function get__fsys():FS return this._fsys;
    function set__fsys(v:FS):FS {
        this._fsys = v;
        return v;
    }
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = (v : stdgo.GoString);
        return v;
    }
    public function new(?_fsys:FS, ?_dir:String) this = new stdgo._internal.io.fs.Fs_t_subfs.T_subFS(_fsys, (_dir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) @:dox(hide) abstract T_statDirEntry(stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry) from stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry to stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry {
    public var _info(get, set) : FileInfo;
    function get__info():FileInfo return this._info;
    function set__info(v:FileInfo):FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_info:FileInfo) this = new stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry(_info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FileMode = stdgo._internal.io.fs.Fs_filemode.FileMode;
typedef WalkDirFunc = stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc;
typedef PathErrorPointer = stdgo._internal.io.fs.Fs_patherrorpointer.PathErrorPointer;
class PathError_static_extension {
    static public function timeout(_e:PathError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>);
        return stdgo._internal.io.fs.Fs_patherror_static_extension.PathError_static_extension.timeout(_e);
    }
    static public function unwrap(_e:PathError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>);
        return stdgo._internal.io.fs.Fs_patherror_static_extension.PathError_static_extension.unwrap(_e);
    }
    static public function error(_e:PathError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>);
        return stdgo._internal.io.fs.Fs_patherror_static_extension.PathError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_dirInfoPointer = stdgo._internal.io.fs.Fs_t_dirinfopointer.T_dirInfoPointer;
@:dox(hide) class T_dirInfo_static_extension {
    static public function string(_di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension.string(_di);
    }
    static public function name(_di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension.name(_di);
    }
    static public function info(_di:T_dirInfo):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension.info(_di);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_di:T_dirInfo):FileMode {
        return stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension.type(_di);
    }
    static public function isDir(_di:T_dirInfo):Bool {
        return stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension.isDir(_di);
    }
}
@:dox(hide) typedef T_subFSPointer = stdgo._internal.io.fs.Fs_t_subfspointer.T_subFSPointer;
@:dox(hide) class T_subFS_static_extension {
    static public function sub(_f:T_subFS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension.sub(_f, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(_f:T_subFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension.glob(_f, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(_f:T_subFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension.readFile(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:T_subFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension.readDir(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_f:T_subFS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixErr(_f:T_subFS, _err:stdgo.Error):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension._fixErr(_f, _err);
    }
    static public function _shorten(_f:T_subFS, _name:String):stdgo.Tuple<String, Bool> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension._shorten(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fullName(_f:T_subFS, _op:String, _name:String):stdgo.Tuple<String, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>);
        final _op = (_op : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension._fullName(_f, _op, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_statDirEntryPointer = stdgo._internal.io.fs.Fs_t_statdirentrypointer.T_statDirEntryPointer;
@:dox(hide) class T_statDirEntry_static_extension {
    static public function string(_d:T_statDirEntry):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_t_statdirentry_static_extension.T_statDirEntry_static_extension.string(_d);
    }
    static public function info(_d:T_statDirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>);
        return {
            final obj = stdgo._internal.io.fs.Fs_t_statdirentry_static_extension.T_statDirEntry_static_extension.info(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:T_statDirEntry):FileMode {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_t_statdirentry_static_extension.T_statDirEntry_static_extension.type(_d);
    }
    static public function isDir(_d:T_statDirEntry):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_t_statdirentry_static_extension.T_statDirEntry_static_extension.isDir(_d);
    }
    static public function name(_d:T_statDirEntry):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_t_statdirentry_static_extension.T_statDirEntry_static_extension.name(_d);
    }
}
typedef FileModePointer = stdgo._internal.io.fs.Fs_filemodepointer.FileModePointer;
class FileMode_static_extension {
    static public function type(_m:FileMode):FileMode {
        return stdgo._internal.io.fs.Fs_filemode_static_extension.FileMode_static_extension.type(_m);
    }
    static public function perm(_m:FileMode):FileMode {
        return stdgo._internal.io.fs.Fs_filemode_static_extension.FileMode_static_extension.perm(_m);
    }
    static public function isRegular(_m:FileMode):Bool {
        return stdgo._internal.io.fs.Fs_filemode_static_extension.FileMode_static_extension.isRegular(_m);
    }
    static public function isDir(_m:FileMode):Bool {
        return stdgo._internal.io.fs.Fs_filemode_static_extension.FileMode_static_extension.isDir(_m);
    }
    static public function string(_m:FileMode):String {
        return stdgo._internal.io.fs.Fs_filemode_static_extension.FileMode_static_extension.string(_m);
    }
}
typedef WalkDirFuncPointer = stdgo._internal.io.fs.Fs_walkdirfuncpointer.WalkDirFuncPointer;
class WalkDirFunc_static_extension {

}
/**
    * Package fs defines basic interfaces to a file system.
    * A file system can be provided by the host operating system
    * but also by other packages.
**/
class Fs {
    /**
        * FormatFileInfo returns a formatted version of info for human readability.
        * Implementations of FileInfo can call this from a String method.
        * The output for a file named "hello.go", 100 bytes, mode 0o644, created
        * January 1, 1970 at noon is
        * 
        * 	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
    **/
    static public inline function formatFileInfo(_info:FileInfo):String {
        return stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(_info);
    }
    /**
        * FormatDirEntry returns a formatted version of dir for human readability.
        * Implementations of DirEntry can call this from a String method.
        * The outputs for a directory named subdir and a file named hello.go are:
        * 
        * 	d subdir/
        * 	- hello.go
    **/
    static public inline function formatDirEntry(_dir:DirEntry):String {
        return stdgo._internal.io.fs.Fs_formatdirentry.formatDirEntry(_dir);
    }
    /**
        * ValidPath reports whether the given path name
        * is valid for use in a call to Open.
        * 
        * Path names passed to open are UTF-8-encoded,
        * unrooted, slash-separated sequences of path elements, like “x/y/z”.
        * Path names must not contain an element that is “.” or “..” or the empty string,
        * except for the special case that the root directory is named “.”.
        * Paths must not start or end with a slash: “/x” and “x/” are invalid.
        * 
        * Note that paths are slash-separated on all systems, even Windows.
        * Paths containing other characters such as backslash and colon
        * are accepted as valid, but those characters must never be
        * interpreted by an FS implementation as path element separators.
    **/
    static public inline function validPath(_name:String):Bool {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.io.fs.Fs_validpath.validPath(_name);
    }
    /**
        * Glob returns the names of all files matching pattern or nil
        * if there is no matching file. The syntax of patterns is the same
        * as in path.Match. The pattern may describe hierarchical names such as
        * usr/bin/ed.
        * 
        * Glob ignores file system errors such as I/O errors reading directories.
        * The only possible returned error is path.ErrBadPattern, reporting that
        * the pattern is malformed.
        * 
        * If fs implements GlobFS, Glob calls fs.Glob.
        * Otherwise, Glob uses ReadDir to traverse the directory tree
        * and look for matches for the pattern.
    **/
    static public inline function glob(_fsys:FS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_glob.glob(_fsys, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ReadDir reads the named directory
        * and returns a list of directory entries sorted by filename.
        * 
        * If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
        * Otherwise ReadDir calls fs.Open and uses ReadDir and Close
        * on the returned file.
    **/
    static public inline function readDir(_fsys:FS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_readdir.readDir(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * FileInfoToDirEntry returns a DirEntry that returns information from info.
        * If info is nil, FileInfoToDirEntry returns nil.
    **/
    static public inline function fileInfoToDirEntry(_info:FileInfo):DirEntry {
        return stdgo._internal.io.fs.Fs_fileinfotodirentry.fileInfoToDirEntry(_info);
    }
    /**
        * ReadFile reads the named file from the file system fs and returns its contents.
        * A successful call returns a nil error, not io.EOF.
        * (Because ReadFile reads the whole file, the expected EOF
        * from the final Read is not treated as an error to be reported.)
        * 
        * If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
        * Otherwise ReadFile calls fs.Open and uses Read and Close
        * on the returned file.
    **/
    static public inline function readFile(_fsys:FS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_readfile.readFile(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * Stat returns a FileInfo describing the named file from the file system.
        * 
        * If fs implements StatFS, Stat calls fs.Stat.
        * Otherwise, Stat opens the file to stat it.
    **/
    static public inline function stat(_fsys:FS, _name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_stat.stat(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sub returns an FS corresponding to the subtree rooted at fsys's dir.
        * 
        * If dir is ".", Sub returns fsys unchanged.
        * Otherwise, if fs implements SubFS, Sub returns fsys.Sub(dir).
        * Otherwise, Sub returns a new FS implementation sub that,
        * in effect, implements sub.Open(name) as fsys.Open(path.Join(dir, name)).
        * The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.
        * 
        * Note that Sub(os.DirFS("/"), "prefix") is equivalent to os.DirFS("/prefix")
        * and that neither of them guarantees to avoid operating system
        * accesses outside "/prefix", because the implementation of os.DirFS
        * does not check for symbolic links inside "/prefix" that point to
        * other directories. That is, os.DirFS is not a general substitute for a
        * chroot-style security mechanism, and Sub does not change that fact.
    **/
    static public inline function sub(_fsys:FS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_sub.sub(_fsys, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
        * WalkDir does not follow symbolic links found in directories,
        * but if root itself is a symbolic link, its target will be walked.
    **/
    static public inline function walkDir(_fsys:FS, _root:String, _fn:WalkDirFunc):stdgo.Error {
        final _root = (_root : stdgo.GoString);
        return stdgo._internal.io.fs.Fs_walkdir.walkDir(_fsys, _root, _fn);
    }
}
