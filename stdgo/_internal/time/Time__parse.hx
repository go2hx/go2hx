package stdgo._internal.time;
function _parse(_layout:stdgo.GoString, _value:stdgo.GoString, _defaultLocation:stdgo.Ref<stdgo._internal.time.Time_location.Location>, _local:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var __0 = (_layout?.__copy__() : stdgo.GoString), __1 = (_value?.__copy__() : stdgo.GoString);
var _avalue = __1, _alayout = __0;
        var _rangeErrString = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _amSet = (false : Bool);
        var _pmSet = (false : Bool);
        var _year:stdgo.GoInt = (0 : stdgo.GoInt), _month:stdgo.GoInt = (-1 : stdgo.GoInt), _day:stdgo.GoInt = (-1 : stdgo.GoInt), _yday:stdgo.GoInt = (-1 : stdgo.GoInt), _hour:stdgo.GoInt = (0 : stdgo.GoInt), _min:stdgo.GoInt = (0 : stdgo.GoInt), _sec:stdgo.GoInt = (0 : stdgo.GoInt), _nsec:stdgo.GoInt = (0 : stdgo.GoInt), _z:stdgo.Ref<stdgo._internal.time.Time_location.Location> = (null : stdgo.Ref<stdgo._internal.time.Time_location.Location>), _zoneOffset:stdgo.GoInt = (-1 : stdgo.GoInt), _zoneName:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1054"
        while (true) {
            var _err:stdgo.Error = (null : stdgo.Error);
            var __tmp__ = stdgo._internal.time.Time__nextstdchunk._nextStdChunk(_layout?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
            var _stdstr = ((_layout.__slice__((_prefix.length), ((_layout.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.time.Time__skip._skip(_value?.__copy__(), _prefix?.__copy__());
                _value = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1059"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1060"
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _prefix?.__copy__(), _value?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())) };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1062"
            if (_std == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1063"
                if ((_value.length) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1064"
                    return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), ((": extra text: " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_value?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__())) };
                };
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1066"
                break;
            };
            _layout = _suffix?.__copy__();
            var _p:stdgo.GoString = ("" : stdgo.GoString);
            var _hold = (_value?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1071"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((276 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1073"
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1075"
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = @:binopAssign __tmp__0;
                                _value = @:binopAssign __tmp__1;
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__atoi._atoi(_p?.__copy__());
                                _year = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1079"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1080"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1082"
                            if ((_year >= (69 : stdgo.GoInt) : Bool)) {
                                _year = (_year + ((1900 : stdgo.GoInt)) : stdgo.GoInt);
                            } else {
                                _year = (_year + ((2000 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                            break;
                        } else if (__value__ == ((275 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1088"
                            if ((((_value.length) < (4 : stdgo.GoInt) : Bool) || !stdgo._internal.time.Time__isdigit._isDigit(_value?.__copy__(), (0 : stdgo.GoInt)) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1090"
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = @:binopAssign __tmp__0;
                                _value = @:binopAssign __tmp__1;
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__atoi._atoi(_p?.__copy__());
                                _year = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                            break;
                        } else if (__value__ == ((258 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__lookup._lookup(stdgo._internal.time.Time__shortmonthnames._shortMonthNames, _value?.__copy__());
                                _month = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1096"
                            _month++;
                            break;
                        } else if (__value__ == ((257 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__lookup._lookup(stdgo._internal.time.Time__longmonthnames._longMonthNames, _value?.__copy__());
                                _month = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1099"
                            _month++;
                            break;
                        } else if (__value__ == ((259 : stdgo.GoInt)) || __value__ == ((260 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), _std == ((260 : stdgo.GoInt)));
                                _month = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1102"
                            if (((_err == null) && (((_month <= (0 : stdgo.GoInt) : Bool) || ((12 : stdgo.GoInt) < _month : Bool) : Bool)) : Bool)) {
                                _rangeErrString = ("month" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((262 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__lookup._lookup(stdgo._internal.time.Time__shortdaynames._shortDayNames, _value?.__copy__());
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((261 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__lookup._lookup(stdgo._internal.time.Time__longdaynames._longDayNames, _value?.__copy__());
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((263 : stdgo.GoInt)) || __value__ == ((264 : stdgo.GoInt)) || __value__ == ((265 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1111"
                            if (((_std == ((264 : stdgo.GoInt)) && ((_value.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                                _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), _std == ((265 : stdgo.GoInt)));
                                _day = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((266 : stdgo.GoInt)) || __value__ == ((267 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1118"
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (2 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1119"
                                    if (((_std == ((266 : stdgo.GoInt)) && ((_value.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                                        _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString).__copy__();
                                    };
                                    _i++;
                                };
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum3._getnum3(_value?.__copy__(), _std == ((267 : stdgo.GoInt)));
                                _yday = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((524 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), false);
                                _hour = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1128"
                            if (((_hour < (0 : stdgo.GoInt) : Bool) || ((24 : stdgo.GoInt) <= _hour : Bool) : Bool)) {
                                _rangeErrString = ("hour" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((525 : stdgo.GoInt)) || __value__ == ((526 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), _std == ((526 : stdgo.GoInt)));
                                _hour = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1133"
                            if (((_hour < (0 : stdgo.GoInt) : Bool) || ((12 : stdgo.GoInt) < _hour : Bool) : Bool)) {
                                _rangeErrString = ("hour" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((527 : stdgo.GoInt)) || __value__ == ((528 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), _std == ((528 : stdgo.GoInt)));
                                _min = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1138"
                            if (((_min < (0 : stdgo.GoInt) : Bool) || ((60 : stdgo.GoInt) <= _min : Bool) : Bool)) {
                                _rangeErrString = ("minute" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((529 : stdgo.GoInt)) || __value__ == ((530 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), _std == ((530 : stdgo.GoInt)));
                                _sec = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1143"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1144"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1146"
                            if (((_sec < (0 : stdgo.GoInt) : Bool) || ((60 : stdgo.GoInt) <= _sec : Bool) : Bool)) {
                                _rangeErrString = ("second" : stdgo.GoString);
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1148"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1152"
                            if (((((_value.length) >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.time.Time__commaorperiod._commaOrPeriod(_value[(0 : stdgo.GoInt)]) : Bool) && stdgo._internal.time.Time__isdigit._isDigit(_value?.__copy__(), (1 : stdgo.GoInt)) : Bool)) {
                                {
                                    var __tmp__ = stdgo._internal.time.Time__nextstdchunk._nextStdChunk(_layout?.__copy__());
                                    _std = @:tmpset0 __tmp__._1;
                                };
                                _std = (_std & ((65535 : stdgo.GoInt)) : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1155"
                                if (((_std == (34 : stdgo.GoInt)) || (_std == (35 : stdgo.GoInt)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1157"
                                    break;
                                };
                                var _n = (2 : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1161"
                                while (((_n < (_value.length) : Bool) && stdgo._internal.time.Time__isdigit._isDigit(_value?.__copy__(), _n) : Bool)) {
                                    {};
                                    _n++;
                                };
                                {
                                    var __tmp__ = stdgo._internal.time.Time__parsenanoseconds._parseNanoseconds(_value?.__copy__(), _n);
                                    _nsec = @:tmpset0 __tmp__._0;
                                    _rangeErrString = @:tmpset0 __tmp__._1?.__copy__();
                                    _err = @:tmpset0 __tmp__._2;
                                };
                                _value = (_value.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            break;
                        } else if (__value__ == ((533 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1167"
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1169"
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = @:binopAssign __tmp__0;
                                _value = @:binopAssign __tmp__1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1172"
                            {
                                final __value__ = _p;
                                if (__value__ == (("PM" : stdgo.GoString))) {
                                    _pmSet = true;
                                } else if (__value__ == (("AM" : stdgo.GoString))) {
                                    _amSet = true;
                                } else {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                };
                            };
                            break;
                        } else if (__value__ == ((534 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1181"
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1183"
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = @:binopAssign __tmp__0;
                                _value = @:binopAssign __tmp__1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1186"
                            {
                                final __value__ = _p;
                                if (__value__ == (("pm" : stdgo.GoString))) {
                                    _pmSet = true;
                                } else if (__value__ == (("am" : stdgo.GoString))) {
                                    _amSet = true;
                                } else {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                };
                            };
                            break;
                        } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((25 : stdgo.GoInt)) || __value__ == ((26 : stdgo.GoInt)) || __value__ == ((28 : stdgo.GoInt)) || __value__ == ((29 : stdgo.GoInt)) || __value__ == ((31 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt)) || __value__ == ((33 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1195"
                            if ((((((_std == ((24 : stdgo.GoInt)) || _std == ((26 : stdgo.GoInt)) : Bool) || (_std == (27 : stdgo.GoInt)) : Bool)) && ((_value.length) >= (1 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (90 : stdgo.GoUInt8)) : Bool)) {
                                _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _z = stdgo._internal.time.Time_utc.uTC;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1198"
                                break;
                            };
                            var _sign:stdgo.GoString = ("" : stdgo.GoString), _hour:stdgo.GoString = ("" : stdgo.GoString), _min:stdgo.GoString = ("" : stdgo.GoString), _seconds:stdgo.GoString = ("" : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1201"
                            if (((_std == (27 : stdgo.GoInt)) || (_std == (32 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1202"
                                if (((_value.length) < (6 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1204"
                                    break;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1206"
                                if (_value[(3 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1208"
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = @:binopAssign __tmp__0;
                                    _hour = @:binopAssign __tmp__1;
                                    _min = @:binopAssign __tmp__2;
                                    _seconds = @:binopAssign __tmp__3;
                                    _value = @:binopAssign __tmp__4;
                                };
                            } else if (((_std == (31 : stdgo.GoInt)) || (_std == (26 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1212"
                                if (((_value.length) < (3 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1214"
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = ("00" : stdgo.GoString);
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = @:binopAssign __tmp__0;
                                    _hour = @:binopAssign __tmp__1;
                                    _min = @:binopAssign __tmp__2;
                                    _seconds = @:binopAssign __tmp__3;
                                    _value = @:binopAssign __tmp__4;
                                };
                            } else if (((_std == (28 : stdgo.GoInt)) || (_std == (33 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1218"
                                if (((_value.length) < (9 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1220"
                                    break;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1222"
                                if (((_value[(3 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) || (_value[(6 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1224"
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = (_value.__slice__((7 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__4 = (_value.__slice__((9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = @:binopAssign __tmp__0;
                                    _hour = @:binopAssign __tmp__1;
                                    _min = @:binopAssign __tmp__2;
                                    _seconds = @:binopAssign __tmp__3;
                                    _value = @:binopAssign __tmp__4;
                                };
                            } else if (((_std == (25 : stdgo.GoInt)) || (_std == (30 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1228"
                                if (((_value.length) < (7 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1230"
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = (_value.__slice__((5 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__4 = (_value.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = @:binopAssign __tmp__0;
                                    _hour = @:binopAssign __tmp__1;
                                    _min = @:binopAssign __tmp__2;
                                    _seconds = @:binopAssign __tmp__3;
                                    _value = @:binopAssign __tmp__4;
                                };
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1234"
                                if (((_value.length) < (5 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1236"
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = @:binopAssign __tmp__0;
                                    _hour = @:binopAssign __tmp__1;
                                    _min = @:binopAssign __tmp__2;
                                    _seconds = @:binopAssign __tmp__3;
                                    _value = @:binopAssign __tmp__4;
                                };
                            };
                            var _hr:stdgo.GoInt = (0 : stdgo.GoInt), _mm:stdgo.GoInt = (0 : stdgo.GoInt), _ss:stdgo.GoInt = (0 : stdgo.GoInt);
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_hour?.__copy__(), true);
                                _hr = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._2;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1242"
                            if (_err == null) {
                                {
                                    var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_min?.__copy__(), true);
                                    _mm = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1245"
                            if (_err == null) {
                                {
                                    var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_seconds?.__copy__(), true);
                                    _ss = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                            };
                            _zoneOffset = (((((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) + _mm : stdgo.GoInt)) * (60 : stdgo.GoInt) : stdgo.GoInt) + _ss : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1249"
                            {
                                final __value__ = _sign[(0 : stdgo.GoInt)];
                                if (__value__ == ((43 : stdgo.GoUInt8))) {} else if (__value__ == ((45 : stdgo.GoUInt8))) {
                                    _zoneOffset = -_zoneOffset;
                                } else {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                };
                            };
                            break;
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1258"
                            if ((((_value.length) >= (3 : stdgo.GoInt) : Bool) && ((_value.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString) == ("UTC" : stdgo.GoString)) : Bool)) {
                                _z = stdgo._internal.time.Time_utc.uTC;
                                _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1261"
                                break;
                            };
                            var __tmp__ = stdgo._internal.time.Time__parsetimezone._parseTimeZone(_value?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1264"
                            if (!_ok) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1266"
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__(_n) : stdgo.GoString)?.__copy__();
                                _zoneName = @:binopAssign __tmp__0;
                                _value = @:binopAssign __tmp__1;
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.GoInt))) {
                            var _ndigit = ((1 : stdgo.GoInt) + stdgo._internal.time.Time__digitslen._digitsLen(_std) : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1274"
                            if (((_value.length) < _ndigit : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1276"
                                break;
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__parsenanoseconds._parseNanoseconds(_value?.__copy__(), _ndigit);
                                _nsec = @:tmpset0 __tmp__._0;
                                _rangeErrString = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            _value = (_value.__slice__(_ndigit) : stdgo.GoString)?.__copy__();
                            break;
                        } else if (__value__ == ((35 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1282"
                            if ((((((_value.length) < (2 : stdgo.GoInt) : Bool) || !stdgo._internal.time.Time__commaorperiod._commaOrPeriod(_value[(0 : stdgo.GoInt)]) : Bool) || (_value[(1 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _value[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1284"
                                break;
                            };
                            var _i = (0 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1289"
                            while (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_value.length) : Bool) && ((48 : stdgo.GoUInt8) <= _value[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_value[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1290"
                                _i++;
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__parsenanoseconds._parseNanoseconds(_value?.__copy__(), ((1 : stdgo.GoInt) + _i : stdgo.GoInt));
                                _nsec = @:tmpset0 __tmp__._0;
                                _rangeErrString = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            _value = (_value.__slice__(((1 : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1295"
            if (_rangeErrString != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1296"
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _stdstr?.__copy__(), _value?.__copy__(), (((": " : stdgo.GoString) + _rangeErrString?.__copy__() : stdgo.GoString) + (" out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())) };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1298"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1299"
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _stdstr?.__copy__(), _hold?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1302"
        if ((_pmSet && (_hour < (12 : stdgo.GoInt) : Bool) : Bool)) {
            _hour = (_hour + ((12 : stdgo.GoInt)) : stdgo.GoInt);
        } else if ((_amSet && (_hour == (12 : stdgo.GoInt)) : Bool)) {
            _hour = (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1309"
        if ((_yday >= (0 : stdgo.GoInt) : Bool)) {
            var _d:stdgo.GoInt = (0 : stdgo.GoInt);
            var _m:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1312"
            if (stdgo._internal.time.Time__isleap._isLeap(_year)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1313"
                if (_yday == ((60 : stdgo.GoInt))) {
                    _m = ((2 : stdgo._internal.time.Time_month.Month) : stdgo.GoInt);
                    _d = (29 : stdgo.GoInt);
                } else if ((_yday > (60 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1317"
                    _yday--;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1320"
            if (((_yday < (1 : stdgo.GoInt) : Bool) || (_yday > (365 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1321"
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day-of-year out of range" : stdgo.GoString))) };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1323"
            if (_m == ((0 : stdgo.GoInt))) {
                _m = ((((_yday - (1 : stdgo.GoInt) : stdgo.GoInt)) / (31 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1325"
                if (((stdgo._internal.time.Time__daysbefore._daysBefore[(_m : stdgo.GoInt)] : stdgo.GoInt) < _yday : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1326"
                    _m++;
                };
                _d = (_yday - (stdgo._internal.time.Time__daysbefore._daysBefore[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1332"
            if (((_month >= (0 : stdgo.GoInt) : Bool) && (_month != _m) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1333"
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day-of-year does not match month" : stdgo.GoString))) };
            };
            _month = _m;
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1336"
            if (((_day >= (0 : stdgo.GoInt) : Bool) && (_day != _d) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1337"
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day-of-year does not match day" : stdgo.GoString))) };
            };
            _day = _d;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1341"
            if ((_month < (0 : stdgo.GoInt) : Bool)) {
                _month = ((1 : stdgo._internal.time.Time_month.Month) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1344"
            if ((_day < (0 : stdgo.GoInt) : Bool)) {
                _day = (1 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1350"
        if (((_day < (1 : stdgo.GoInt) : Bool) || (_day > stdgo._internal.time.Time__daysin._daysIn((_month : stdgo._internal.time.Time_month.Month), _year) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1351"
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day out of range" : stdgo.GoString))) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1354"
        if (({
            final value = _z;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1355"
            return { _0 : stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, _z)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1358"
        if (_zoneOffset != ((-1 : stdgo.GoInt))) {
            var _t = (stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, stdgo._internal.time.Time_utc.uTC)?.__copy__() : stdgo._internal.time.Time_time.Time);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1360"
            _t._addSec(-(_zoneOffset : stdgo.GoInt64));
            var __tmp__ = _local._lookup(_t._unixSec()), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1365"
            if (((_offset == _zoneOffset) && (((_zoneName == (stdgo.Go.str() : stdgo.GoString)) || (_name == _zoneName) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1366"
                _t._setLoc(_local);
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1367"
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
            var _zoneNameCopy = (stdgo._internal.time.Time__clonestring._cloneString(_zoneName?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1372"
            _t._setLoc(stdgo._internal.time.Time_fixedzone.fixedZone(_zoneNameCopy?.__copy__(), _zoneOffset));
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1373"
            return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1376"
        if (_zoneName != ((stdgo.Go.str() : stdgo.GoString))) {
            var _t = (stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, stdgo._internal.time.Time_utc.uTC)?.__copy__() : stdgo._internal.time.Time_time.Time);
            var __tmp__ = _local._lookupName(_zoneName?.__copy__(), _t._unixSec()), _offset:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1381"
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1382"
                _t._addSec(-(_offset : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1383"
                _t._setLoc(_local);
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1384"
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1388"
            if ((((_zoneName.length) > (3 : stdgo.GoInt) : Bool) && ((_zoneName.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) == ("GMT" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.time.Time__atoi._atoi((_zoneName.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    _offset = @:tmpset0 __tmp__._0;
                };
                _offset = (_offset * ((3600 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _zoneNameCopy = (stdgo._internal.time.Time__clonestring._cloneString(_zoneName?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1393"
            _t._setLoc(stdgo._internal.time.Time_fixedzone.fixedZone(_zoneNameCopy?.__copy__(), _offset));
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1394"
            return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1398"
        return { _0 : stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, _defaultLocation)?.__copy__(), _1 : (null : stdgo.Error) };
    }
