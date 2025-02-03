package stdgo.log.slog;
class JSONHandler_static_extension {
    static public function handle(_h:JSONHandler, __787:stdgo._internal.context.Context_Context.Context, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler>);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension.handle(_h, __787, _r);
    }
    static public function withGroup(_h:JSONHandler, _name:String):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension.withGroup(_h, _name);
    }
    static public function withAttrs(_h:JSONHandler, _attrs:Array<Attr>):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler>);
        final _attrs = ([for (i in _attrs) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension.withAttrs(_h, _attrs);
    }
    static public function enabled(_h:JSONHandler, __787:stdgo._internal.context.Context_Context.Context, _level:Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler>);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension.enabled(_h, __787, _level);
    }
    public static function _withGroup(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler, _0:String):T_commonHandler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._withGroup(__self__, _0);
    }
    public static function _withAttrs(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler, _0:Array<Attr>):T_commonHandler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._withAttrs(__self__, _0);
    }
    public static function _newHandleState(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler, _0:Buffer, _1:Bool, _2:String):T_handleState {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>);
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._newHandleState(__self__, _0, _1, _2);
    }
    public static function _handle(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler, _0:Record):stdgo.Error {
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._handle(__self__, _0);
    }
    public static function _enabled(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler, _0:Level):Bool {
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._enabled(__self__, _0);
    }
    public static function _clone(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler):T_commonHandler {
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._clone(__self__);
    }
    public static function _attrSep(__self__:stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler):String {
        return stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension._attrSep(__self__);
    }
}
