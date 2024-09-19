package stdgo._internal.internal.bisect;
class Matcher_asInterface {
    @:keep
    public dynamic function _stack(_w:stdgo._internal.internal.bisect.Bisect_Writer.Writer):Bool return __self__.value._stack(_w);
    @:keep
    public dynamic function stack(_w:stdgo._internal.internal.bisect.Bisect_Writer.Writer):Bool return __self__.value.stack(_w);
    @:keep
    public dynamic function _fileLine(_w:stdgo._internal.internal.bisect.Bisect_Writer.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool return __self__.value._fileLine(_w, _file, _line);
    @:keep
    public dynamic function fileLine(_w:stdgo._internal.internal.bisect.Bisect_Writer.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool return __self__.value.fileLine(_w, _file, _line);
    @:keep
    public dynamic function _matchResult(_id:stdgo.GoUInt64):Bool return __self__.value._matchResult(_id);
    @:keep
    public dynamic function shouldPrint(_id:stdgo.GoUInt64):Bool return __self__.value.shouldPrint(_id);
    @:keep
    public dynamic function shouldEnable(_id:stdgo.GoUInt64):Bool return __self__.value.shouldEnable(_id);
    @:keep
    public dynamic function markerOnly():Bool return __self__.value.markerOnly();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.bisect.Bisect_Matcher.Matcher>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
