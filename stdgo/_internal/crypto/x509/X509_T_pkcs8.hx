package stdgo._internal.crypto.x509;
@:structInit class T_pkcs8 {
    public var version : stdgo.GoInt = 0;
    public var algo : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var privateKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?version:stdgo.GoInt, ?algo:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?privateKey:stdgo.Slice<stdgo.GoUInt8>) {
        if (version != null) this.version = version;
        if (algo != null) this.algo = algo;
        if (privateKey != null) this.privateKey = privateKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkcs8(version, algo, privateKey);
    }
}
