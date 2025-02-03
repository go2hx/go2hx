package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.Pipeline_static_extension) abstract Pipeline(stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline) from stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline to stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline {
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
    public var _request(get, set) : T_sequencer;
    function get__request():T_sequencer return this._request;
    function set__request(v:T_sequencer):T_sequencer {
        this._request = v;
        return v;
    }
    public var _response(get, set) : T_sequencer;
    function get__response():T_sequencer return this._response;
    function set__response(v:T_sequencer):T_sequencer {
        this._response = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_id:std.UInt, ?_request:T_sequencer, ?_response:T_sequencer) this = new stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline(_mu, (_id : stdgo.GoUInt), _request, _response);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
