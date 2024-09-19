package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function fuzzFormatRFC3339(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        for (__2 => _ts in (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt64>>(5, 5, ...[(new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(-9223372036854775808i64 : stdgo.GoInt64), (-9223372036854775808i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(-62167219200i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(1661201140i64 : stdgo.GoInt64), (676836973i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(253402300799i64 : stdgo.GoInt64), (999999999i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(9223372036854775807i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__()].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt64>>)) {
            _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(true), stdgo.Go.toInterface(false), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(false), stdgo.Go.toInterface(true), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            for (__19 => _offset in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (60 : stdgo.GoInt), (3600 : stdgo.GoInt), (362340 : stdgo.GoInt), (123456789 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(false), stdgo.Go.toInterface(false), stdgo.Go.toInterface(-_offset));
                _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(false), stdgo.Go.toInterface(false), stdgo.Go.toInterface(_offset));
            };
        };
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _sec:stdgo.GoInt64, _nsec:stdgo.GoInt64, _useUTC:Bool, _useLocal:Bool, _tzOffset:stdgo.GoInt):Void {
            var _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = (null : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
            if (_useUTC) {
                _loc = stdgo._internal.time.Time_utc.utc;
            } else if (_useLocal) {
                _loc = stdgo._internal.time.Time_local.local;
            } else {
                _loc = stdgo._internal.time.Time_fixedZone.fixedZone(stdgo.Go.str()?.__copy__(), _tzOffset);
            };
            var _ts = (stdgo._internal.time.Time_unix.unix(_sec, _nsec).in_(_loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _got = stdgo._internal.time.Time_appendFormatRFC3339.appendFormatRFC3339(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), false);
            var _want = stdgo._internal.time.Time_appendFormatAny.appendFormatAny(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _want)) {
                _t.errorf(("Format(%s, RFC3339) mismatch:\n\tgot:  %s\n\twant: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            var _gotNanos = stdgo._internal.time.Time_appendFormatRFC3339.appendFormatRFC3339(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), true);
            var _wantNanos = stdgo._internal.time.Time_appendFormatAny.appendFormatAny(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _want)) {
                _t.errorf(("Format(%s, RFC3339Nano) mismatch:\n\tgot:  %s\n\twant: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_gotNanos), stdgo.Go.toInterface(_wantNanos));
            };
        }));
    }
