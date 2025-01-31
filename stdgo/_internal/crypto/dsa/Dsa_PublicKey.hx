package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_PublicKey_static_extension.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var parameters : stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters = ({} : stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters);
    public var y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?parameters:stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters, ?y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (parameters != null) this.parameters = parameters;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(parameters, y);
    }
}
