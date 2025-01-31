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
class Header_asInterface {
    @:keep
    @:tdfield
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return @:_0 __self__.value.fileInfo();
    @:keep
    @:tdfield
    public dynamic function _allowedFormats():{ var _0 : stdgo._internal.archive.tar.Tar_Format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } return @:_0 __self__.value._allowedFormats();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_HeaderPointer.HeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
