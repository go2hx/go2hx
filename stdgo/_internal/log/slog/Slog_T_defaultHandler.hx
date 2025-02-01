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
@:structInit @:using(stdgo._internal.log.slog.Slog_T_defaultHandler_static_extension.T_defaultHandler_static_extension) class T_defaultHandler {
    public var _ch : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> = (null : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
    public var _output : (stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error = null;
    public function new(?_ch:stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>, ?_output:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error) {
        if (_ch != null) this._ch = _ch;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_defaultHandler(_ch, _output);
    }
}
