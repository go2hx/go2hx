package stdgo.log.slog;
class Logger_static_extension {
    static public function _logAttrs(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _level:Level, _msg:String, _attrs:haxe.Rest<Attr>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension._logAttrs(_l, _ctx, _level, _msg, ...[for (i in _attrs) i]);
    }
    static public function _log(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _level:Level, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension._log(_l, _ctx, _level, _msg, ...[for (i in _args) i]);
    }
    static public function errorContext(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.errorContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function error(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.error(_l, _msg, ...[for (i in _args) i]);
    }
    static public function warnContext(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.warnContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function warn(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.warn(_l, _msg, ...[for (i in _args) i]);
    }
    static public function infoContext(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.infoContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function info(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.info(_l, _msg, ...[for (i in _args) i]);
    }
    static public function debugContext(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.debugContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function debug(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.debug(_l, _msg, ...[for (i in _args) i]);
    }
    static public function logAttrs(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _level:Level, _msg:String, _attrs:haxe.Rest<Attr>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.logAttrs(_l, _ctx, _level, _msg, ...[for (i in _attrs) i]);
    }
    static public function log(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _level:Level, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.log(_l, _ctx, _level, _msg, ...[for (i in _args) i]);
    }
    static public function enabled(_l:Logger, _ctx:stdgo._internal.context.Context_Context.Context, _level:Level):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        return stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.enabled(_l, _ctx, _level);
    }
    static public function withGroup(_l:Logger, _name:String):Logger {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.withGroup(_l, _name);
    }
    static public function with(_l:Logger, _args:haxe.Rest<stdgo.AnyInterface>):Logger {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        return stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.with(_l, ...[for (i in _args) i]);
    }
    static public function handler(_l:Logger):Handler {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        return stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension.handler(_l);
    }
    static public function _clone(_l:Logger):Logger {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>);
        return stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension._clone(_l);
    }
}
