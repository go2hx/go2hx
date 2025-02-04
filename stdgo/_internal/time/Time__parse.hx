package stdgo._internal.time;
function _parse(_layout:stdgo.GoString, _value:stdgo.GoString, _defaultLocation:stdgo.Ref<stdgo._internal.time.Time_location.Location>, _local:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var __0 = (_layout?.__copy__() : stdgo.GoString), __1 = (_value?.__copy__() : stdgo.GoString);
var _avalue = __1, _alayout = __0;
        var _rangeErrString = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _amSet = (false : Bool);
        var _pmSet = (false : Bool);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (-1 : stdgo.GoInt), __2:stdgo.GoInt = (-1 : stdgo.GoInt), __3:stdgo.GoInt = (-1 : stdgo.GoInt), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt), __7:stdgo.GoInt = (0 : stdgo.GoInt), __8:stdgo.Ref<stdgo._internal.time.Time_location.Location> = (null : stdgo.Ref<stdgo._internal.time.Time_location.Location>), __9:stdgo.GoInt = (-1 : stdgo.GoInt), __10:stdgo.GoString = ("" : stdgo.GoString);
var _zoneName = __10, _zoneOffset = __9, _z = __8, _nsec = __7, _sec = __6, _min = __5, _hour = __4, _yday = __3, _day = __2, _month = __1, _year = __0;
        while (true) {
            var _err:stdgo.Error = (null : stdgo.Error);
            var __tmp__ = stdgo._internal.time.Time__nextstdchunk._nextStdChunk(_layout?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
            var _stdstr = ((_layout.__slice__((_prefix.length), ((_layout.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.time.Time__skip._skip(_value?.__copy__(), _prefix?.__copy__());
                _value = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _prefix?.__copy__(), _value?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())) };
            };
            if (_std == ((0 : stdgo.GoInt))) {
                if ((_value.length) != ((0 : stdgo.GoInt))) {
                    return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), ((": extra text: " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_value?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__())) };
                };
                break;
            };
            _layout = _suffix?.__copy__();
            var _p:stdgo.GoString = ("" : stdgo.GoString);
            var _hold = (_value?.__copy__() : stdgo.GoString);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((276 : stdgo.GoInt))) {
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
                            {
                                var __tmp__ = stdgo._internal.time.Time__atoi._atoi(_p?.__copy__());
                                _year = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                break;
                            };
                            if ((_year >= (69 : stdgo.GoInt) : Bool)) {
                                _year = (_year + ((1900 : stdgo.GoInt)) : stdgo.GoInt);
                            } else {
                                _year = (_year + ((2000 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                            break;
                        } else if (__value__ == ((275 : stdgo.GoInt))) {
                            if ((((_value.length) < (4 : stdgo.GoInt) : Bool) || !stdgo._internal.time.Time__isdigit._isDigit(_value?.__copy__(), (0 : stdgo.GoInt)) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
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
                            _month++;
                            break;
                        } else if (__value__ == ((257 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__lookup._lookup(stdgo._internal.time.Time__longmonthnames._longMonthNames, _value?.__copy__());
                                _month = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            _month++;
                            break;
                        } else if (__value__ == ((259 : stdgo.GoInt)) || __value__ == ((260 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_value?.__copy__(), _std == ((260 : stdgo.GoInt)));
                                _month = @:tmpset0 __tmp__._0;
                                _value = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
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
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (2 : stdgo.GoInt) : Bool)) {
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
                            if (_err != null) {
                                break;
                            };
                            if (((_sec < (0 : stdgo.GoInt) : Bool) || ((60 : stdgo.GoInt) <= _sec : Bool) : Bool)) {
                                _rangeErrString = ("second" : stdgo.GoString);
                                break;
                            };
                            if (((((_value.length) >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.time.Time__commaorperiod._commaOrPeriod(_value[(0 : stdgo.GoInt)]) : Bool) && stdgo._internal.time.Time__isdigit._isDigit(_value?.__copy__(), (1 : stdgo.GoInt)) : Bool)) {
                                {
                                    var __tmp__ = stdgo._internal.time.Time__nextstdchunk._nextStdChunk(_layout?.__copy__());
                                    _std = @:tmpset0 __tmp__._1;
                                };
                                _std = (_std & ((65535 : stdgo.GoInt)) : stdgo.GoInt);
                                if (((_std == (34 : stdgo.GoInt)) || (_std == (35 : stdgo.GoInt)) : Bool)) {
                                    break;
                                };
                                var _n = (2 : stdgo.GoInt);
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
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
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
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
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
                            if ((((((_std == ((24 : stdgo.GoInt)) || _std == ((26 : stdgo.GoInt)) : Bool) || (_std == (27 : stdgo.GoInt)) : Bool)) && ((_value.length) >= (1 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (90 : stdgo.GoUInt8)) : Bool)) {
                                _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _z = stdgo._internal.time.Time_utc.uTC;
                                break;
                            };
                            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), __2:stdgo.GoString = ("" : stdgo.GoString), __3:stdgo.GoString = ("" : stdgo.GoString);
var _seconds = __3, _min = __2, _hour = __1, _sign = __0;
                            if (((_std == (27 : stdgo.GoInt)) || (_std == (32 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (6 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                if (_value[(3 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else if (((_std == (31 : stdgo.GoInt)) || (_std == (26 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (3 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = ("00" : stdgo.GoString);
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else if (((_std == (28 : stdgo.GoInt)) || (_std == (33 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (9 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                if (((_value[(3 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) || (_value[(6 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = (_value.__slice__((7 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__4 = (_value.__slice__((9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else if (((_std == (25 : stdgo.GoInt)) || (_std == (30 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (7 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = (_value.__slice__((5 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__4 = (_value.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else {
                                if (((_value.length) < (5 : stdgo.GoInt) : Bool)) {
                                    _err = stdgo._internal.time.Time__errbad._errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            };
                            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _ss = __2, _mm = __1, _hr = __0;
                            {
                                var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_hour?.__copy__(), true);
                                _hr = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err == null) {
                                {
                                    var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_min?.__copy__(), true);
                                    _mm = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                            };
                            if (_err == null) {
                                {
                                    var __tmp__ = stdgo._internal.time.Time__getnum._getnum(_seconds?.__copy__(), true);
                                    _ss = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                            };
                            _zoneOffset = (((((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) + _mm : stdgo.GoInt)) * (60 : stdgo.GoInt) : stdgo.GoInt) + _ss : stdgo.GoInt);
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
                            if ((((_value.length) >= (3 : stdgo.GoInt) : Bool) && ((_value.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString) == ("UTC" : stdgo.GoString)) : Bool)) {
                                _z = stdgo._internal.time.Time_utc.uTC;
                                _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            };
                            var __tmp__ = stdgo._internal.time.Time__parsetimezone._parseTimeZone(_value?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__(_n) : stdgo.GoString)?.__copy__();
                                _zoneName = __tmp__0;
                                _value = __tmp__1;
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.GoInt))) {
                            var _ndigit = ((1 : stdgo.GoInt) + stdgo._internal.time.Time__digitslen._digitsLen(_std) : stdgo.GoInt);
                            if (((_value.length) < _ndigit : Bool)) {
                                _err = stdgo._internal.time.Time__errbad._errBad;
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
                            if ((((((_value.length) < (2 : stdgo.GoInt) : Bool) || !stdgo._internal.time.Time__commaorperiod._commaOrPeriod(_value[(0 : stdgo.GoInt)]) : Bool) || (_value[(1 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _value[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                                break;
                            };
                            var _i = (0 : stdgo.GoInt);
                            while (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_value.length) : Bool) && ((48 : stdgo.GoUInt8) <= _value[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_value[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
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
            if (_rangeErrString != ((stdgo.Go.str() : stdgo.GoString))) {
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _stdstr?.__copy__(), _value?.__copy__(), (((": " : stdgo.GoString) + _rangeErrString?.__copy__() : stdgo.GoString) + (" out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())) };
            };
            if (_err != null) {
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _stdstr?.__copy__(), _hold?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())) };
            };
        };
        if ((_pmSet && (_hour < (12 : stdgo.GoInt) : Bool) : Bool)) {
            _hour = (_hour + ((12 : stdgo.GoInt)) : stdgo.GoInt);
        } else if ((_amSet && (_hour == (12 : stdgo.GoInt)) : Bool)) {
            _hour = (0 : stdgo.GoInt);
        };
        if ((_yday >= (0 : stdgo.GoInt) : Bool)) {
            var _d:stdgo.GoInt = (0 : stdgo.GoInt);
            var _m:stdgo.GoInt = (0 : stdgo.GoInt);
            if (stdgo._internal.time.Time__isleap._isLeap(_year)) {
                if (_yday == ((60 : stdgo.GoInt))) {
                    _m = ((2 : stdgo._internal.time.Time_month.Month) : stdgo.GoInt);
                    _d = (29 : stdgo.GoInt);
                } else if ((_yday > (60 : stdgo.GoInt) : Bool)) {
                    _yday--;
                };
            };
            if (((_yday < (1 : stdgo.GoInt) : Bool) || (_yday > (365 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day-of-year out of range" : stdgo.GoString))) };
            };
            if (_m == ((0 : stdgo.GoInt))) {
                _m = ((((_yday - (1 : stdgo.GoInt) : stdgo.GoInt)) / (31 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                if (((stdgo._internal.time.Time__daysbefore._daysBefore[(_m : stdgo.GoInt)] : stdgo.GoInt) < _yday : Bool)) {
                    _m++;
                };
                _d = (_yday - (stdgo._internal.time.Time__daysbefore._daysBefore[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            };
            if (((_month >= (0 : stdgo.GoInt) : Bool) && (_month != _m) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day-of-year does not match month" : stdgo.GoString))) };
            };
            _month = _m;
            if (((_day >= (0 : stdgo.GoInt) : Bool) && (_day != _d) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day-of-year does not match day" : stdgo.GoString))) };
            };
            _day = _d;
        } else {
            if ((_month < (0 : stdgo.GoInt) : Bool)) {
                _month = ((1 : stdgo._internal.time.Time_month.Month) : stdgo.GoInt);
            };
            if ((_day < (0 : stdgo.GoInt) : Bool)) {
                _day = (1 : stdgo.GoInt);
            };
        };
        if (((_day < (1 : stdgo.GoInt) : Bool) || (_day > stdgo._internal.time.Time__daysin._daysIn((_month : stdgo._internal.time.Time_month.Month), _year) : Bool) : Bool)) {
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo.Go.asInterface(stdgo._internal.time.Time__newparseerror._newParseError(_alayout?.__copy__(), _avalue?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _value?.__copy__(), (": day out of range" : stdgo.GoString))) };
        };
        if ((_z != null && ((_z : Dynamic).__nil__ == null || !(_z : Dynamic).__nil__))) {
            return { _0 : stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, _z)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (_zoneOffset != ((-1 : stdgo.GoInt))) {
            var _t = (stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, stdgo._internal.time.Time_utc.uTC)?.__copy__() : stdgo._internal.time.Time_time.Time);
            @:check2 _t._addSec(-(_zoneOffset : stdgo.GoInt64));
            var __tmp__ = @:check2r _local._lookup(@:check2 _t._unixSec()), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
            if (((_offset == _zoneOffset) && (((_zoneName == (stdgo.Go.str() : stdgo.GoString)) || (_name == _zoneName) : Bool)) : Bool)) {
                @:check2 _t._setLoc(_local);
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
            var _zoneNameCopy = (stdgo._internal.time.Time__clonestring._cloneString(_zoneName?.__copy__())?.__copy__() : stdgo.GoString);
            @:check2 _t._setLoc(stdgo._internal.time.Time_fixedzone.fixedZone(_zoneNameCopy?.__copy__(), _zoneOffset));
            return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (_zoneName != ((stdgo.Go.str() : stdgo.GoString))) {
            var _t = (stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, stdgo._internal.time.Time_utc.uTC)?.__copy__() : stdgo._internal.time.Time_time.Time);
            var __tmp__ = @:check2r _local._lookupName(_zoneName?.__copy__(), @:check2 _t._unixSec()), _offset:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                @:check2 _t._addSec(-(_offset : stdgo.GoInt64));
                @:check2 _t._setLoc(_local);
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
            if ((((_zoneName.length) > (3 : stdgo.GoInt) : Bool) && ((_zoneName.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) == ("GMT" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.time.Time__atoi._atoi((_zoneName.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    _offset = @:tmpset0 __tmp__._0;
                };
                _offset = (_offset * ((3600 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _zoneNameCopy = (stdgo._internal.time.Time__clonestring._cloneString(_zoneName?.__copy__())?.__copy__() : stdgo.GoString);
            @:check2 _t._setLoc(stdgo._internal.time.Time_fixedzone.fixedZone(_zoneNameCopy?.__copy__(), _offset));
            return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo._internal.time.Time_date.date(_year, (_month : stdgo._internal.time.Time_month.Month), _day, _hour, _min, _sec, _nsec, _defaultLocation)?.__copy__(), _1 : (null : stdgo.Error) };
    }
