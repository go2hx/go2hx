package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_labelset_static_extension.LabelSet_static_extension) class LabelSet {
    public var _list : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_label.T_label> = (null : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_label.T_label>);
    public function new(?_list:stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_label.T_label>) {
        if (_list != null) this._list = _list;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LabelSet(_list);
    }
}
