package stdgo._internal.log.slog.internal.benchmarks;
import stdgo._internal.time.Time;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
class T_fastTextHandler_asInterface {
    @:keep
    @:tdfield
    public dynamic function withGroup(_0:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler return @:_0 __self__.value.withGroup(_0);
    @:keep
    @:tdfield
    public dynamic function withAttrs(_0:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler return @:_0 __self__.value.withAttrs(_0);
    @:keep
    @:tdfield
    public dynamic function _appendTime(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, _t:stdgo._internal.time.Time_Time.Time):Void @:_0 __self__.value._appendTime(_buf, _t);
    @:keep
    @:tdfield
    public dynamic function _appendValue(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, _v:stdgo._internal.log.slog.Slog_Value.Value):Void @:_0 __self__.value._appendValue(_buf, _v);
    @:keep
    @:tdfield
    public dynamic function handle(__0:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error return @:_0 __self__.value.handle(__0, _r);
    @:keep
    @:tdfield
    public dynamic function enabled(_0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool return @:_0 __self__.value.enabled(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandlerPointer.T_fastTextHandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
