package stdgo.internal.poll;
@:structInit @:using(stdgo.internal.poll.Poll.T_pollDesc_static_extension) abstract T_pollDesc(stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc) from stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc to stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc {
    public var _fd(get, set) : FD;
    function get__fd():FD return this._fd;
    function set__fd(v:FD):FD {
        this._fd = (v : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public function new(?_fd:FD, ?_closing:Bool) this = new stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc((_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>), _closing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
