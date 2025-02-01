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
@:structInit @:using(stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension) class Value {
    @:optional
    public var __9 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _num : stdgo.GoUInt64 = 0;
    public var _any : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?__9:stdgo.GoArray<() -> Void>, ?_num:stdgo.GoUInt64, ?_any:stdgo.AnyInterface) {
        if (__9 != null) this.__9 = __9;
        if (_num != null) this._num = _num;
        if (_any != null) this._any = _any;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(__9, _num, _any);
    }
}
