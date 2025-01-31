package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function tzsetRule(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_Rule.Rule; var _1 : stdgo.GoString; var _2 : Bool; } {
        var __tmp__ = stdgo._internal.time.Time__tzsetRule._tzsetRule(_s?.__copy__()), _r:stdgo._internal.time.Time_T_rule.T_rule = __tmp__._0, _rs:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        var _rr = ({ kind : (_r._kind : stdgo._internal.time.Time_RuleKind.RuleKind), day : _r._day, week : _r._week, mon : _r._mon, time : _r._time } : stdgo._internal.time.Time_Rule.Rule);
        return { _0 : _rr?.__copy__(), _1 : _rs?.__copy__(), _2 : _ok };
    }
