package stdgo._internal.time;
function tzsetRule(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_rule.Rule; var _1 : stdgo.GoString; var _2 : Bool; } {
        var __tmp__ = stdgo._internal.time.Time__tzsetrule._tzsetRule(_s?.__copy__()), _r:stdgo._internal.time.Time_t_rule.T_rule = __tmp__._0, _rs:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        var _rr = ({ kind : (_r._kind : stdgo._internal.time.Time_rulekind.RuleKind), day : _r._day, week : _r._week, mon : _r._mon, time : _r._time } : stdgo._internal.time.Time_rule.Rule);
        return { _0 : _rr?.__copy__(), _1 : _rs?.__copy__(), _2 : _ok };
    }
