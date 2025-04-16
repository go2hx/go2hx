package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_spansetblock_static_extension.T_spanSetBlock_static_extension) class T_spanSetBlock {
    @:embedded
    public var _lfnode : stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode = ({} : stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode);
    public function new(?_lfnode:stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode) {
        if (_lfnode != null) this._lfnode = _lfnode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_spanSetBlock(_lfnode);
    }
}
