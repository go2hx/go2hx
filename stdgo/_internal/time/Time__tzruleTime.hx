package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _tzruleTime(_year:stdgo.GoInt, _r:stdgo._internal.time.Time_T_rule.T_rule, _off:stdgo.GoInt):stdgo.GoInt {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r._kind;
                    if (__value__ == ((0 : stdgo._internal.time.Time_T_ruleKind.T_ruleKind))) {
                        _s = (((_r._day - (1 : stdgo.GoInt) : stdgo.GoInt)) * (86400 : stdgo.GoInt) : stdgo.GoInt);
                        if ((stdgo._internal.time.Time__isLeap._isLeap(_year) && (_r._day >= (60 : stdgo.GoInt) : Bool) : Bool)) {
                            _s = (_s + ((86400 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        break;
                    } else if (__value__ == ((1 : stdgo._internal.time.Time_T_ruleKind.T_ruleKind))) {
                        _s = (_r._day * (86400 : stdgo.GoInt) : stdgo.GoInt);
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.time.Time_T_ruleKind.T_ruleKind))) {
                        var _m1 = ((((_r._mon + (9 : stdgo.GoInt) : stdgo.GoInt)) % (12 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                        var _yy0 = (_year : stdgo.GoInt);
                        if ((_r._mon <= (2 : stdgo.GoInt) : Bool)) {
                            _yy0--;
                        };
                        var _yy1 = (_yy0 / (100 : stdgo.GoInt) : stdgo.GoInt);
                        var _yy2 = (_yy0 % (100 : stdgo.GoInt) : stdgo.GoInt);
                        var _dow = ((((((((((((26 : stdgo.GoInt) * _m1 : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) / (10 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _yy2 : stdgo.GoInt) + (_yy2 / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (_yy1 / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - ((2 : stdgo.GoInt) * _yy1 : stdgo.GoInt) : stdgo.GoInt)) % (7 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_dow < (0 : stdgo.GoInt) : Bool)) {
                            _dow = (_dow + ((7 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        var _d = (_r._day - _dow : stdgo.GoInt);
                        if ((_d < (0 : stdgo.GoInt) : Bool)) {
                            _d = (_d + ((7 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        {
                            var _i = (1 : stdgo.GoInt);
                            while ((_i < _r._week : Bool)) {
                                if (((_d + (7 : stdgo.GoInt) : stdgo.GoInt) >= stdgo._internal.time.Time__daysIn._daysIn((_r._mon : stdgo._internal.time.Time_Month.Month), _year) : Bool)) {
                                    break;
                                };
_d = (_d + ((7 : stdgo.GoInt)) : stdgo.GoInt);
                                _i++;
                            };
                        };
                        _d = (_d + ((stdgo._internal.time.Time__daysBefore._daysBefore[(_r._mon - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
                        if ((stdgo._internal.time.Time__isLeap._isLeap(_year) && (_r._mon > (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _d++;
                        };
                        _s = (_d * (86400 : stdgo.GoInt) : stdgo.GoInt);
                        break;
                    };
                };
                break;
            };
        };
        return ((_s + _r._time : stdgo.GoInt) - _off : stdgo.GoInt);
    }
