package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.T_sequencer_static_extension) abstract T_sequencer(stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer) from stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer to stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = (v : stdgo.GoUInt);
        return v;
    }
    public var _wait(get, set) : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>;
    function get__wait():stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>> return this._wait;
    function set__wait(v:stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>):stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>> {
        this._wait = (v : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_id:std.UInt, ?_wait:stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>) this = new stdgo._internal.net.textproto.Textproto_T_sequencer.T_sequencer(_mu, (_id : stdgo.GoUInt), (_wait : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
