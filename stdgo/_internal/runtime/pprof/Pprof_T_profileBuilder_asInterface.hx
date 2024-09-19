package stdgo._internal.runtime.pprof;
class T_profileBuilder_asInterface {
    @:keep
    public dynamic function _readMapping():Void __self__.value._readMapping();
    @:keep
    public dynamic function _addMappingEntry(_lo:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString, _fake:Bool):Void __self__.value._addMappingEntry(_lo, _hi, _offset, _file, _buildID, _fake);
    @:keep
    public dynamic function _addMapping(_lo:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString):Void __self__.value._addMapping(_lo, _hi, _offset, _file, _buildID);
    @:keep
    public dynamic function _emitLocation():stdgo.GoUInt64 return __self__.value._emitLocation();
    @:keep
    public dynamic function _appendLocsForStack(_locs:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Slice<stdgo.GoUInt64> return __self__.value._appendLocsForStack(_locs, _stk);
    @:keep
    public dynamic function _build():Void __self__.value._build();
    @:keep
    public dynamic function _addCPUData(_data:stdgo.Slice<stdgo.GoUInt64>, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Error return __self__.value._addCPUData(_data, _tags);
    @:keep
    public dynamic function _pbMapping(_tag:stdgo.GoInt, _id:stdgo.GoUInt64, _base:stdgo.GoUInt64, _limit:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString, _hasFuncs:Bool):Void __self__.value._pbMapping(_tag, _id, _base, _limit, _offset, _file, _buildID, _hasFuncs);
    @:keep
    public dynamic function _pbLine(_tag:stdgo.GoInt, _funcID:stdgo.GoUInt64, _line:stdgo.GoInt64):Void __self__.value._pbLine(_tag, _funcID, _line);
    @:keep
    public dynamic function _pbLabel(_tag:stdgo.GoInt, _key:stdgo.GoString, _str:stdgo.GoString, _num:stdgo.GoInt64):Void __self__.value._pbLabel(_tag, _key, _str, _num);
    @:keep
    public dynamic function _pbSample(_values:stdgo.Slice<stdgo.GoInt64>, _locs:stdgo.Slice<stdgo.GoUInt64>, _labels:() -> Void):Void __self__.value._pbSample(_values, _locs, _labels);
    @:keep
    public dynamic function _pbValueType(_tag:stdgo.GoInt, _typ:stdgo.GoString, _unit:stdgo.GoString):Void __self__.value._pbValueType(_tag, _typ, _unit);
    @:keep
    public dynamic function _flush():Void __self__.value._flush();
    @:keep
    public dynamic function _stringIndex(_s:stdgo.GoString):stdgo.GoInt64 return __self__.value._stringIndex(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
