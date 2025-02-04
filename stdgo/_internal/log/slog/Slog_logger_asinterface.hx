package stdgo._internal.log.slog;
class Logger_asInterface {
    @:keep
    @:tdfield
    public dynamic function _logAttrs(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _attrs:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):Void @:_0 __self__.value._logAttrs(_ctx, _level, _msg, ..._attrs);
    @:keep
    @:tdfield
    public dynamic function _log(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._log(_ctx, _level, _msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function errorContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.errorContext(_ctx, _msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function error(_msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.error(_msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function warnContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.warnContext(_ctx, _msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function warn(_msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.warn(_msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function infoContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.infoContext(_ctx, _msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function info(_msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.info(_msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function debugContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.debugContext(_ctx, _msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function debug(_msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.debug(_msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function logAttrs(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _attrs:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):Void @:_0 __self__.value.logAttrs(_ctx, _level, _msg, ..._attrs);
    @:keep
    @:tdfield
    public dynamic function log(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.log(_ctx, _level, _msg, ..._args);
    @:keep
    @:tdfield
    public dynamic function enabled(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level):Bool return @:_0 __self__.value.enabled(_ctx, _level);
    @:keep
    @:tdfield
    public dynamic function withGroup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> return @:_0 __self__.value.withGroup(_name);
    @:keep
    @:tdfield
    public dynamic function with(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> return @:_0 __self__.value.with(..._args);
    @:keep
    @:tdfield
    public dynamic function handler():stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.handler();
    @:keep
    @:tdfield
    public dynamic function _clone():stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> return @:_0 __self__.value._clone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_loggerpointer.LoggerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
