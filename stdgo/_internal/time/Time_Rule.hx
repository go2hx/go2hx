package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_Rule_static_extension.Rule_static_extension) class Rule {
    public var kind : stdgo._internal.time.Time_RuleKind.RuleKind = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_RuleKind.RuleKind);
    public var day : stdgo.GoInt = 0;
    public var week : stdgo.GoInt = 0;
    public var mon : stdgo.GoInt = 0;
    public var time : stdgo.GoInt = 0;
    public function new(?kind:stdgo._internal.time.Time_RuleKind.RuleKind, ?day:stdgo.GoInt, ?week:stdgo.GoInt, ?mon:stdgo.GoInt, ?time:stdgo.GoInt) {
        if (kind != null) this.kind = kind;
        if (day != null) this.day = day;
        if (week != null) this.week = week;
        if (mon != null) this.mon = mon;
        if (time != null) this.time = time;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rule(kind, day, week, mon, time);
    }
}
