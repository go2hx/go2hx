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
class T_sparseArray_asInterface {
    @:keep
    @:tdfield
    public dynamic function _maxEntries():stdgo.GoInt return @:_0 __self__.value._maxEntries();
    @:keep
    @:tdfield
    public dynamic function _isExtended():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._isExtended();
    @:keep
    @:tdfield
    public dynamic function _entry(_i:stdgo.GoInt):stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem return @:_0 __self__.value._entry(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_T_sparseArrayPointer.T_sparseArrayPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
