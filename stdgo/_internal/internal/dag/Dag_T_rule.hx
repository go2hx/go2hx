package stdgo._internal.internal.dag;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.internal.dag.Dag_T_rule_static_extension.T_rule_static_extension) class T_rule {
    public var _less : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _op : stdgo.GoString = "";
    public var _def : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_less:stdgo.Slice<stdgo.GoString>, ?_op:stdgo.GoString, ?_def:stdgo.Slice<stdgo.GoString>) {
        if (_less != null) this._less = _less;
        if (_op != null) this._op = _op;
        if (_def != null) this._def = _def;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rule(_less, _op, _def);
    }
}
