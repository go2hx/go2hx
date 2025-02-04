package stdgo._internal.archive.tar;
class T_sparseFileWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _physicalRemaining():stdgo.GoInt64 return @:_0 __self__.value._physicalRemaining();
    @:keep
    @:tdfield
    public dynamic function _logicalRemaining():stdgo.GoInt64 return @:_0 __self__.value._logicalRemaining();
    @:keep
    @:tdfield
    public dynamic function readFrom(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrom(_r);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_sparsefilewriterpointer.T_sparseFileWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
