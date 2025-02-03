package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.LabelSet_static_extension) abstract LabelSet(stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet) from stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet to stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet {
    public var _list(get, set) : Array<T_label>;
    function get__list():Array<T_label> return [for (i in this._list) i];
    function set__list(v:Array<T_label>):Array<T_label> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>);
        return v;
    }
    public function new(?_list:Array<T_label>) this = new stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet(([for (i in _list) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
