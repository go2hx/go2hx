package stdgo._internal.index.suffixarray;
class Index_asInterface {
    @:keep
    @:tdfield
    public dynamic function findAllIndex(_r:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return @:_0 __self__.value.findAllIndex(_r, _n);
    @:keep
    @:tdfield
    public dynamic function lookup(_s:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> return @:_0 __self__.value.lookup(_s, _n);
    @:keep
    @:tdfield
    public dynamic function _lookupAll(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints return @:_0 __self__.value._lookupAll(_s);
    @:keep
    @:tdfield
    public dynamic function _at(_i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._at(_i);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    @:tdfield
    public dynamic function read(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Error return @:_0 __self__.value.read(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.index.suffixarray.Suffixarray_indexpointer.IndexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
