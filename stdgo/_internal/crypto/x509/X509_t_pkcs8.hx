package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_pkcs8_static_extension.T_pkcs8_static_extension) class T_pkcs8 {
    public var version : stdgo.GoInt = 0;
    public var algo : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var privateKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?version:stdgo.GoInt, ?algo:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?privateKey:stdgo.Slice<stdgo.GoUInt8>) {
        if (version != null) this.version = version;
        if (algo != null) this.algo = algo;
        if (privateKey != null) this.privateKey = privateKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkcs8(version, algo, privateKey);
    }
}
