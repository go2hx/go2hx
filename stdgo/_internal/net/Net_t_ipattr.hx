package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_ipattr_static_extension.T_ipAttr_static_extension) class T_ipAttr {
    public var scope : stdgo._internal.net.Net_t_scope.T_scope = ((0 : stdgo.GoUInt8) : stdgo._internal.net.Net_t_scope.T_scope);
    public var precedence : stdgo.GoUInt8 = 0;
    public var label : stdgo.GoUInt8 = 0;
    public function new(?scope:stdgo._internal.net.Net_t_scope.T_scope, ?precedence:stdgo.GoUInt8, ?label:stdgo.GoUInt8) {
        if (scope != null) this.scope = scope;
        if (precedence != null) this.precedence = precedence;
        if (label != null) this.label = label;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ipAttr(scope, precedence, label);
    }
}
