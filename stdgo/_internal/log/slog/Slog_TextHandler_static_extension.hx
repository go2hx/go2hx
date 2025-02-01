package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.log.slog.Slog.TextHandler_asInterface) class TextHandler_static_extension {
    @:keep
    @:tdfield
    static public function handle( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler>, __913:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler> = _h;
        return @:check2r (@:checkr _h ?? throw "null pointer dereference")._commonHandler._handle(_r?.__copy__());
    }
    @:keep
    @:tdfield
    static public function withGroup( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler>, _name:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler> = _h;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _commonHandler : @:check2r (@:checkr _h ?? throw "null pointer dereference")._commonHandler._withGroup(_name?.__copy__()) } : stdgo._internal.log.slog.Slog_TextHandler.TextHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler>));
    }
    @:keep
    @:tdfield
    static public function withAttrs( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler>, _attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler> = _h;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _commonHandler : @:check2r (@:checkr _h ?? throw "null pointer dereference")._commonHandler._withAttrs(_attrs) } : stdgo._internal.log.slog.Slog_TextHandler.TextHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler>));
    }
    @:keep
    @:tdfield
    static public function enabled( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler>, __913:stdgo._internal.context.Context_Context.Context, _level:stdgo._internal.log.slog.Slog_Level.Level):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_TextHandler.TextHandler> = _h;
        return @:check2r (@:checkr _h ?? throw "null pointer dereference")._commonHandler._enabled(_level);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _withGroup( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:_5 __self__._withGroup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _withAttrs( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler, _0:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:_5 __self__._withAttrs(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newHandleState( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler, _0:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, _1:Bool, _2:stdgo.GoString):stdgo._internal.log.slog.Slog_T_handleState.T_handleState return @:_5 __self__._newHandleState(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _handle( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler, _0:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error return @:_5 __self__._handle(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _enabled( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler, _0:stdgo._internal.log.slog.Slog_Level.Level):Bool return @:_5 __self__._enabled(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _clone( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler):stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:_5 __self__._clone();
    @:embedded
    @:embeddededffieldsffun
    public static function _attrSep( __self__:stdgo._internal.log.slog.Slog_TextHandler.TextHandler):stdgo.GoString return @:_5 __self__._attrSep();
}
