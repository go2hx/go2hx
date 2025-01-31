package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_PrivateKey_static_extension.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey = ({} : stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey);
    public var x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?publicKey:stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey, ?x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (publicKey != null) this.publicKey = publicKey;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, x);
    }
}
