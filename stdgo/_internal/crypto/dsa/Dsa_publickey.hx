package stdgo._internal.crypto.dsa;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_publickey_static_extension.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var parameters : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters = ({} : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters);
    public var y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?parameters:stdgo._internal.crypto.dsa.Dsa_parameters.Parameters, ?y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (parameters != null) this.parameters = parameters;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(parameters, y);
    }
}
