package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs8_static_extension) abstract T_pkcs8(stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8) from stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8 to stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8 {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var algo(get, set) : AlgorithmIdentifier;
    function get_algo():AlgorithmIdentifier return this.algo;
    function set_algo(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.algo = v;
        return v;
    }
    public var privateKey(get, set) : Array<std.UInt>;
    function get_privateKey():Array<std.UInt> return [for (i in this.privateKey) i];
    function set_privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this.privateKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?version:StdTypes.Int, ?algo:AlgorithmIdentifier, ?privateKey:Array<std.UInt>) this = new stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8((version : stdgo.GoInt), algo, ([for (i in privateKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
