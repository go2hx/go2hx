package stdgo._internal.internal.coverage.encodemeta;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
class CoverageMetaDataBuilder_asInterface {
    @:keep
    @:tdfield
    public dynamic function emit(_w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker):{ var _0 : stdgo.GoArray<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.emit(_w);
    @:keep
    @:tdfield
    public dynamic function _wrUint32(_w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker, _v:stdgo.GoUInt32):Void @:_0 __self__.value._wrUint32(_w, _v);
    @:keep
    @:tdfield
    public dynamic function _reportWriteError(_err:stdgo.Error):Void @:_0 __self__.value._reportWriteError(_err);
    @:keep
    @:tdfield
    public dynamic function _emitFunc(_w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker, _off:stdgo.GoInt64, _f:stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._emitFunc(_w, _off, _f);
    @:keep
    @:tdfield
    public dynamic function _emitFuncOffsets(_w:stdgo._internal.io.Io_WriteSeeker.WriteSeeker, _off:stdgo.GoInt64):stdgo.GoInt64 return @:_0 __self__.value._emitFuncOffsets(_w, _off);
    @:keep
    @:tdfield
    public dynamic function addFunc(_f:stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc):stdgo.GoUInt return @:_0 __self__.value.addFunc(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilderPointer.CoverageMetaDataBuilderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
