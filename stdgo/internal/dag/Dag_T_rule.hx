package stdgo.internal.dag;
@:structInit @:using(stdgo.internal.dag.Dag.T_rule_static_extension) abstract T_rule(stdgo._internal.internal.dag.Dag_T_rule.T_rule) from stdgo._internal.internal.dag.Dag_T_rule.T_rule to stdgo._internal.internal.dag.Dag_T_rule.T_rule {
    public var _less(get, set) : Array<String>;
    function get__less():Array<String> return [for (i in this._less) i];
    function set__less(v:Array<String>):Array<String> {
        this._less = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _op(get, set) : String;
    function get__op():String return this._op;
    function set__op(v:String):String {
        this._op = (v : stdgo.GoString);
        return v;
    }
    public var _def(get, set) : Array<String>;
    function get__def():Array<String> return [for (i in this._def) i];
    function set__def(v:Array<String>):Array<String> {
        this._def = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_less:Array<String>, ?_op:String, ?_def:Array<String>) this = new stdgo._internal.internal.dag.Dag_T_rule.T_rule(([for (i in _less) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_op : stdgo.GoString), ([for (i in _def) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
