package stdgo._internal.net.http;
@:structInit class T_http2clientConnIdleState {
    public var _canTakeNewRequest : Bool = false;
    public function new(?_canTakeNewRequest:Bool) {
        if (_canTakeNewRequest != null) this._canTakeNewRequest = _canTakeNewRequest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2clientConnIdleState(_canTakeNewRequest);
    }
}
