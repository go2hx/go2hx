package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
class T_buffer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeRune(_r:stdgo.GoInt32):Void @:_0 __self__.value._writeRune(_r);
    @:keep
    @:tdfield
    public dynamic function _writeByte(_c:stdgo.GoUInt8):Void @:_0 __self__.value._writeByte(_c);
    @:keep
    @:tdfield
    public dynamic function _writeString(_s:stdgo.GoString):Void @:_0 __self__.value._writeString(_s);
    @:keep
    @:tdfield
    public dynamic function _write(_p:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.fmt.Fmt_T_bufferPointer.T_bufferPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
