package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _parseStrictRFC3339(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.time.Time__parseRFC3339._parseRFC3339(_b, stdgo._internal.time.Time_local.local), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__()), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : _err };
            };
            var _num2 = function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 {
                return (((10 : stdgo.GoUInt8) * ((_b[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_b[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (true) {
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (_b[(12 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time_ParseError.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("15" : stdgo.GoString), (((_b.__slice__((("2006-01-02T" : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.time.Time_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>)) };
            } else if (_b[(("2006-01-02T15:04:05" : stdgo.GoString).length : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time_ParseError.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString), ("," : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.time.Time_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>)) };
            } else if (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((90 : stdgo.GoUInt8))) {
                if ((_num2((_b.__slice__(((_b.length) - (("07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (24 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time_ParseError.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("Z07:00" : stdgo.GoString), ((_b.__slice__(((_b.length) - (("Z07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (": timezone hour out of range" : stdgo.GoString)) : stdgo._internal.time.Time_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>)) };
                } else if ((_num2((_b.__slice__(((_b.length) - (("00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (60 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time_ParseError.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("Z07:00" : stdgo.GoString), ((_b.__slice__(((_b.length) - (("Z07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (": timezone minute out of range" : stdgo.GoString)) : stdgo._internal.time.Time_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>)) };
                };
            } else {
                return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time_ParseError.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.time.Time_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>)) };
            };
        };
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
