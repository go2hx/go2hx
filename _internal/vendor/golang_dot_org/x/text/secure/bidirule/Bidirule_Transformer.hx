package _internal.vendor.golang_dot_org.x.text.secure.bidirule;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer_static_extension.Transformer_static_extension) class Transformer {
    public var _state : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState);
    public var _hasRTL : Bool = false;
    public var _seen : stdgo.GoUInt16 = 0;
    public function new(?_state:_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState, ?_hasRTL:Bool, ?_seen:stdgo.GoUInt16) {
        if (_state != null) this._state = _state;
        if (_hasRTL != null) this._hasRTL = _hasRTL;
        if (_seen != null) this._seen = _seen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Transformer(_state, _hasRTL, _seen);
    }
}
