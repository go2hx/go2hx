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
@:structInit @:using(stdgo._internal.log.slog.Slog_JSONHandler_static_extension.JSONHandler_static_extension) class JSONHandler {
    @:embedded
    public var _commonHandler : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> = (null : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
    public function new(?_commonHandler:stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>) {
        if (_commonHandler != null) this._commonHandler = _commonHandler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _attrSep(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__attrSep():() -> stdgo.GoString return @:check32 this._commonHandler._attrSep;
    public var _clone(get, never) : () -> stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>;
    @:embedded
    @:embeddededffieldsffun
    public function get__clone():() -> stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:check32 this._commonHandler._clone;
    public var _enabled(get, never) : stdgo._internal.log.slog.Slog_Level.Level -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__enabled():stdgo._internal.log.slog.Slog_Level.Level -> Bool return @:check32 this._commonHandler._enabled;
    public var _handle(get, never) : stdgo._internal.log.slog.Slog_Record.Record -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__handle():stdgo._internal.log.slog.Slog_Record.Record -> stdgo.Error return @:check32 this._commonHandler._handle;
    public var _newHandleState(get, never) : (stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, Bool, stdgo.GoString) -> stdgo._internal.log.slog.Slog_T_handleState.T_handleState;
    @:embedded
    @:embeddededffieldsffun
    public function get__newHandleState():(stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, Bool, stdgo.GoString) -> stdgo._internal.log.slog.Slog_T_handleState.T_handleState return @:check32 this._commonHandler._newHandleState;
    public var _withAttrs(get, never) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr> -> stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>;
    @:embedded
    @:embeddededffieldsffun
    public function get__withAttrs():stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr> -> stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:check32 this._commonHandler._withAttrs;
    public var _withGroup(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>;
    @:embedded
    @:embeddededffieldsffun
    public function get__withGroup():stdgo.GoString -> stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:check32 this._commonHandler._withGroup;
    public function __copy__() {
        return new JSONHandler(_commonHandler);
    }
}
