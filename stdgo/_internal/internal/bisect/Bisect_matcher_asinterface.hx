package stdgo._internal.internal.bisect;
class Matcher_asInterface {
    @:keep
    @:tdfield
    public dynamic function _stack(_w:stdgo._internal.internal.bisect.Bisect_writer.Writer):Bool return @:_0 __self__.value._stack(_w);
    @:keep
    @:tdfield
    public dynamic function stack(_w:stdgo._internal.internal.bisect.Bisect_writer.Writer):Bool return @:_0 __self__.value.stack(_w);
    @:keep
    @:tdfield
    public dynamic function _fileLine(_w:stdgo._internal.internal.bisect.Bisect_writer.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool return @:_0 __self__.value._fileLine(_w, _file, _line);
    @:keep
    @:tdfield
    public dynamic function fileLine(_w:stdgo._internal.internal.bisect.Bisect_writer.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool return @:_0 __self__.value.fileLine(_w, _file, _line);
    @:keep
    @:tdfield
    public dynamic function _matchResult(_id:stdgo.GoUInt64):Bool return @:_0 __self__.value._matchResult(_id);
    @:keep
    @:tdfield
    public dynamic function shouldPrint(_id:stdgo.GoUInt64):Bool return @:_0 __self__.value.shouldPrint(_id);
    @:keep
    @:tdfield
    public dynamic function shouldEnable(_id:stdgo.GoUInt64):Bool return @:_0 __self__.value.shouldEnable(_id);
    @:keep
    @:tdfield
    public dynamic function markerOnly():Bool return @:_0 __self__.value.markerOnly();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.bisect.Bisect_matcherpointer.MatcherPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
