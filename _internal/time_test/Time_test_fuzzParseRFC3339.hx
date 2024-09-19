package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function fuzzParseRFC3339(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__formatTests._formatTests) {
            _f.add(stdgo.Go.toInterface(_tt._result));
        };
        for (__3 => _tt in _internal.time_test.Time_test__parseTests._parseTests) {
            _f.add(stdgo.Go.toInterface(_tt._value));
        };
        for (__4 => _tt in _internal.time_test.Time_test__parseErrorTests._parseErrorTests) {
            _f.add(stdgo.Go.toInterface(_tt._value));
        };
        for (__5 => _tt in _internal.time_test.Time_test__longFractionalDigitsTests._longFractionalDigitsTests) {
            _f.add(stdgo.Go.toInterface(_tt._value));
        };
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _s:stdgo.GoString):Void {
            var _equalTime = (function(_t1:stdgo._internal.time.Time_Time.Time, _t2:stdgo._internal.time.Time_Time.Time):Bool {
                var __tmp__ = _t1.zone(), _name1:stdgo.GoString = __tmp__._0, _offset1:stdgo.GoInt = __tmp__._1;
                var __tmp__ = _t2.zone(), _name2:stdgo.GoString = __tmp__._0, _offset2:stdgo.GoInt = __tmp__._1;
                return ((_t1.equal(_t2?.__copy__()) && _name1 == (_name2) : Bool) && (_offset1 == _offset2) : Bool);
            } : (stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time) -> Bool);
            for (__14 => _tz in (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Location.Location>>(2, 2, ...[stdgo._internal.time.Time_utc.utc, stdgo._internal.time.Time_local.local]) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Location.Location>>)) {
                var __tmp__ = stdgo._internal.time.Time_parseAny.parseAny(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), _s?.__copy__(), stdgo._internal.time.Time_utc.utc, _tz), _t1:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                var __tmp__ = stdgo._internal.time.Time_parseAny.parseAny(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString), _s?.__copy__(), stdgo._internal.time.Time_utc.utc, _tz), _t2:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if ((_err1 == null) != ((_err2 == null))) {
                    _t.fatalf(("ParseAny(%q) error mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err1), stdgo.Go.toInterface(_err2));
                } else if (!_equalTime(_t1?.__copy__(), _t2?.__copy__())) {
                    _t.fatalf(("ParseAny(%q) value mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
                };
                if (_err1 == null) {
                    var _num2 = (function(_s:stdgo.GoString):stdgo.GoUInt8 {
                        return (((10 : stdgo.GoUInt8) * ((_s[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_s[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    } : stdgo.GoString -> stdgo.GoUInt8);
                    if ((((_s.length) > (12 : stdgo.GoInt) : Bool) && (_s[(12 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
                        _t.skipf(("ParseAny(%q) incorrectly allows single-digit hour fields" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    } else if ((((_s.length) > (19 : stdgo.GoInt) : Bool) && (_s[(19 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
                        _t.skipf(("ParseAny(%q) incorrectly allows comma as sub-second separator" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    } else if (((!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_s?.__copy__(), ("Z" : stdgo.GoString)) && ((_s.length) > (4 : stdgo.GoInt) : Bool) : Bool) && (((_num2((_s.__slice__(((_s.length) - (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) >= (24 : stdgo.GoUInt8) : Bool) || (_num2((_s.__slice__(((_s.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) >= (60 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _t.skipf(("ParseAny(%q) incorrectly allows out-of-range zone offset" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.time.Time_parseRFC3339.parseRFC3339(_s?.__copy__(), _tz), _got:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok != ((_err1 == null))) {
                        _t.fatalf(("ParseRFC3339(%q) error mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_err1 == null));
                    } else if (!_equalTime(_got?.__copy__(), _t1?.__copy__())) {
                        _t.fatalf(("ParseRFC3339(%q) value mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
                    };
                };
            };
        }));
    }
