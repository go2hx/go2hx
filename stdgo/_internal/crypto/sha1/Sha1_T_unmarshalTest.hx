package stdgo._internal.crypto.sha1;
@:structInit class T_unmarshalTest {
    public var _state : stdgo.GoString = "";
    public var _sum : stdgo.GoString = "";
    public function new(?_state:stdgo.GoString, ?_sum:stdgo.GoString) {
        if (_state != null) this._state = _state;
        if (_sum != null) this._sum = _sum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_state, _sum);
    }
}