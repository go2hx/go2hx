package stdgo._internal.internal.poll;
@:structInit @:using(stdgo._internal.internal.poll.Poll_t_polldesc_static_extension.T_pollDesc_static_extension) class T_pollDesc {
    public var _fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = (null : stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>);
    public var _closing : Bool = false;
    public function new(?_fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, ?_closing:Bool) {
        if (_fd != null) this._fd = _fd;
        if (_closing != null) this._closing = _closing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pollDesc(_fd, _closing);
    }
}
