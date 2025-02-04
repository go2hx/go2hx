package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension) class Pipeline {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _id : stdgo.GoUInt = 0;
    public var _request : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer = ({} : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer);
    public var _response : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer = ({} : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_id:stdgo.GoUInt, ?_request:stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer, ?_response:stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer) {
        if (_mu != null) this._mu = _mu;
        if (_id != null) this._id = _id;
        if (_request != null) this._request = _request;
        if (_response != null) this._response = _response;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pipeline(_mu, _id, _request, _response);
    }
}
