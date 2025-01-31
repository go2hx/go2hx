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
class T_headerV7_asInterface {
    @:keep
    @:tdfield
    public dynamic function _linkName():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._linkName();
    @:keep
    @:tdfield
    public dynamic function _typeFlag():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._typeFlag();
    @:keep
    @:tdfield
    public dynamic function _chksum():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._chksum();
    @:keep
    @:tdfield
    public dynamic function _modTime():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._modTime();
    @:keep
    @:tdfield
    public dynamic function _size():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._size();
    @:keep
    @:tdfield
    public dynamic function _gid():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._gid();
    @:keep
    @:tdfield
    public dynamic function _uid():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._uid();
    @:keep
    @:tdfield
    public dynamic function _mode():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._mode();
    @:keep
    @:tdfield
    public dynamic function _name():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_T_headerV7Pointer.T_headerV7Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
