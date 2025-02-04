package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_t_sequencer_static_extension.T_sequencer_static_extension) class T_sequencer {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _id : stdgo.GoUInt = 0;
    public var _wait : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>> = (null : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_id:stdgo.GoUInt, ?_wait:stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>) {
        if (_mu != null) this._mu = _mu;
        if (_id != null) this._id = _id;
        if (_wait != null) this._wait = _wait;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sequencer(_mu, _id, _wait);
    }
}
