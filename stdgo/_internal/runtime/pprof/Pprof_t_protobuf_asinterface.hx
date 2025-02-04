package stdgo._internal.runtime.pprof;
class T_protobuf_asInterface {
    @:keep
    @:tdfield
    public dynamic function _endMessage(_tag:stdgo.GoInt, _start:stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset):Void @:_0 __self__.value._endMessage(_tag, _start);
    @:keep
    @:tdfield
    public dynamic function _startMessage():stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset return @:_0 __self__.value._startMessage();
    @:keep
    @:tdfield
    public dynamic function _boolOpt(_tag:stdgo.GoInt, _x:Bool):Void @:_0 __self__.value._boolOpt(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _bool(_tag:stdgo.GoInt, _x:Bool):Void @:_0 __self__.value._bool(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _stringOpt(_tag:stdgo.GoInt, _x:stdgo.GoString):Void @:_0 __self__.value._stringOpt(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _strings(_tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value._strings(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _string(_tag:stdgo.GoInt, _x:stdgo.GoString):Void @:_0 __self__.value._string(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _int64s(_tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoInt64>):Void @:_0 __self__.value._int64s(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _int64Opt(_tag:stdgo.GoInt, _x:stdgo.GoInt64):Void @:_0 __self__.value._int64Opt(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _int64(_tag:stdgo.GoInt, _x:stdgo.GoInt64):Void @:_0 __self__.value._int64(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _uint64Opt(_tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void @:_0 __self__.value._uint64Opt(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _uint64s(_tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt64>):Void @:_0 __self__.value._uint64s(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _uint64(_tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void @:_0 __self__.value._uint64(_tag, _x);
    @:keep
    @:tdfield
    public dynamic function _length(_tag:stdgo.GoInt, _len:stdgo.GoInt):Void @:_0 __self__.value._length(_tag, _len);
    @:keep
    @:tdfield
    public dynamic function _varint(_x:stdgo.GoUInt64):Void @:_0 __self__.value._varint(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.pprof.Pprof_t_protobufpointer.T_protobufPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
