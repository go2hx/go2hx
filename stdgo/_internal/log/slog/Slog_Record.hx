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
@:structInit @:using(stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension) class Record {
    public var time : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var message : stdgo.GoString = "";
    public var level : stdgo._internal.log.slog.Slog_Level.Level = ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Level.Level);
    public var pC : stdgo.GoUIntptr = 0;
    public var _front : stdgo.GoArray<stdgo._internal.log.slog.Slog_Attr.Attr> = new stdgo.GoArray<stdgo._internal.log.slog.Slog_Attr.Attr>(5, 5, ...[for (i in 0 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.slog.Slog_Attr.Attr)]);
    public var _nFront : stdgo.GoInt = 0;
    public var _back : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
    public function new(?time:stdgo._internal.time.Time_Time.Time, ?message:stdgo.GoString, ?level:stdgo._internal.log.slog.Slog_Level.Level, ?pC:stdgo.GoUIntptr, ?_front:stdgo.GoArray<stdgo._internal.log.slog.Slog_Attr.Attr>, ?_nFront:stdgo.GoInt, ?_back:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>) {
        if (time != null) this.time = time;
        if (message != null) this.message = message;
        if (level != null) this.level = level;
        if (pC != null) this.pC = pC;
        if (_front != null) this._front = _front;
        if (_nFront != null) this._nFront = _nFront;
        if (_back != null) this._back = _back;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Record(time, message, level, pC, _front, _nFront, _back);
    }
}
