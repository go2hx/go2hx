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
function groupValue(_as:haxe.Rest<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Value.Value {
        var _as = new stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>(_as.length, 0, ..._as);
        {
            var _n = (stdgo._internal.log.slog.Slog__countEmptyGroups._countEmptyGroups(_as) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var _as2 = (new stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>((0 : stdgo.GoInt).toBasic(), ((_as.length) - _n : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_as.length) - _n : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_as.length) - _n : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.slog.Slog_Attr.Attr)]) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
                for (__12 => _a in _as) {
                    if (!_a.value._isEmptyGroup()) {
                        _as2 = (_as2.__append__(_a));
                    };
                };
                _as = _as2;
            };
        };
        return ({ _num : (_as.length : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((({
            final e = stdgo._internal.unsafe.Unsafe_sliceData.sliceData(_as);
            ({ key : e.key, value : e.value } : stdgo._internal.log.slog.Slog_Attr.Attr);
        })))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
