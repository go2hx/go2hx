package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
class T_headerFileInfo_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.info();
    @:keep
    @:tdfield
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_0 __self__.value.mode();
    @:keep
    @:tdfield
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return @:_0 __self__.value.modTime();
    @:keep
    @:tdfield
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_T_headerFileInfoPointer.T_headerFileInfoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
