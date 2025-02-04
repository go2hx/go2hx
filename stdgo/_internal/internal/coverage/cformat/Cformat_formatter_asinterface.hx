package stdgo._internal.internal.coverage.cformat;
class Formatter_asInterface {
    @:keep
    @:tdfield
    public dynamic function emitFuncs(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.emitFuncs(_w);
    @:keep
    @:tdfield
    public dynamic function emitPercent(_w:stdgo._internal.io.Io_writer.Writer, _covpkgs:stdgo.GoString, _noteEmpty:Bool, _aggregate:Bool):stdgo.Error return @:_0 __self__.value.emitPercent(_w, _covpkgs, _noteEmpty, _aggregate);
    @:keep
    @:tdfield
    public dynamic function emitTextual(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.emitTextual(_w);
    @:keep
    @:tdfield
    public dynamic function addUnit(_file:stdgo.GoString, _fname:stdgo.GoString, _isfnlit:Bool, _unit:stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit, _count:stdgo.GoUInt32):Void @:_0 __self__.value.addUnit(_file, _fname, _isfnlit, _unit, _count);
    @:keep
    @:tdfield
    public dynamic function setPackage(_importpath:stdgo.GoString):Void @:_0 __self__.value.setPackage(_importpath);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.cformat.Cformat_formatterpointer.FormatterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
