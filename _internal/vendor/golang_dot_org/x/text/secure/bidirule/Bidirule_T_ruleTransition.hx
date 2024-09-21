package _internal.vendor.golang_dot_org.x.text.secure.bidirule;
@:structInit class T_ruleTransition {
    public var _next : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState);
    public var _mask : stdgo.GoUInt16 = 0;
    public function new(?_next:_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState, ?_mask:stdgo.GoUInt16) {
        if (_next != null) this._next = _next;
        if (_mask != null) this._mask = _mask;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ruleTransition(_next, _mask);
    }
}
