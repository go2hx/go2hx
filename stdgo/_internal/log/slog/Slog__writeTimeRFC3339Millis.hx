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
function _writeTimeRFC3339Millis(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, _t:stdgo._internal.time.Time_Time.Time):Void {
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        @:check2r _buf.writePosIntWidth(_year, (4 : stdgo.GoInt));
        @:check2r _buf.writeByte((45 : stdgo.GoUInt8));
        @:check2r _buf.writePosIntWidth((_month : stdgo.GoInt), (2 : stdgo.GoInt));
        @:check2r _buf.writeByte((45 : stdgo.GoUInt8));
        @:check2r _buf.writePosIntWidth(_day, (2 : stdgo.GoInt));
        @:check2r _buf.writeByte((84 : stdgo.GoUInt8));
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        @:check2r _buf.writePosIntWidth(_hour, (2 : stdgo.GoInt));
        @:check2r _buf.writeByte((58 : stdgo.GoUInt8));
        @:check2r _buf.writePosIntWidth(_min, (2 : stdgo.GoInt));
        @:check2r _buf.writeByte((58 : stdgo.GoUInt8));
        @:check2r _buf.writePosIntWidth(_sec, (2 : stdgo.GoInt));
        var _ns = (_t.nanosecond() : stdgo.GoInt);
        @:check2r _buf.writeByte((46 : stdgo.GoUInt8));
        @:check2r _buf.writePosIntWidth((_ns / (1000000 : stdgo.GoInt) : stdgo.GoInt), (3 : stdgo.GoInt));
        var __tmp__ = _t.zone(), __10:stdgo.GoString = __tmp__._0, _offsetSeconds:stdgo.GoInt = __tmp__._1;
        if (_offsetSeconds == ((0 : stdgo.GoInt))) {
            @:check2r _buf.writeByte((90 : stdgo.GoUInt8));
        } else {
            var _offsetMinutes = (_offsetSeconds / (60 : stdgo.GoInt) : stdgo.GoInt);
            if ((_offsetMinutes < (0 : stdgo.GoInt) : Bool)) {
                @:check2r _buf.writeByte((45 : stdgo.GoUInt8));
                _offsetMinutes = -_offsetMinutes;
            } else {
                @:check2r _buf.writeByte((43 : stdgo.GoUInt8));
            };
            @:check2r _buf.writePosIntWidth((_offsetMinutes / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
            @:check2r _buf.writeByte((58 : stdgo.GoUInt8));
            @:check2r _buf.writePosIntWidth((_offsetMinutes % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        };
    }
