package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
class T_headerFileInfo_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_0 __self__.value.mode();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:keep
    @:tdfield
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return @:_0 __self__.value.modTime();
    @:keep
    @:tdfield
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_T_headerFileInfoPointer.T_headerFileInfoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
