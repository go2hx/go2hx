package stdgo._internal.encoding.csv;
class Reader_asInterface {
    @:keep
    public dynamic function _readRecord(_dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value._readRecord(_dst);
    @:keep
    public dynamic function _readLine():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readLine();
    @:keep
    public dynamic function readAll():{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } return __self__.value.readAll();
    @:keep
    public dynamic function inputOffset():stdgo.GoInt64 return __self__.value.inputOffset();
    @:keep
    public dynamic function fieldPos(_field:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value.fieldPos(_field);
    @:keep
    public dynamic function read():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.read();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.csv.Csv_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
