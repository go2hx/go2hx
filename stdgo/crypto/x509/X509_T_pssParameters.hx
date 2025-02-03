package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_pssParameters_static_extension) abstract T_pssParameters(stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters) from stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters to stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters {
    public var hash(get, set) : AlgorithmIdentifier;
    function get_hash():AlgorithmIdentifier return this.hash;
    function set_hash(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.hash = v;
        return v;
    }
    public var mGF(get, set) : AlgorithmIdentifier;
    function get_mGF():AlgorithmIdentifier return this.mGF;
    function set_mGF(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.mGF = v;
        return v;
    }
    public var saltLength(get, set) : StdTypes.Int;
    function get_saltLength():StdTypes.Int return this.saltLength;
    function set_saltLength(v:StdTypes.Int):StdTypes.Int {
        this.saltLength = (v : stdgo.GoInt);
        return v;
    }
    public var trailerField(get, set) : StdTypes.Int;
    function get_trailerField():StdTypes.Int return this.trailerField;
    function set_trailerField(v:StdTypes.Int):StdTypes.Int {
        this.trailerField = (v : stdgo.GoInt);
        return v;
    }
    public function new(?hash:AlgorithmIdentifier, ?mGF:AlgorithmIdentifier, ?saltLength:StdTypes.Int, ?trailerField:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters(hash, mGF, (saltLength : stdgo.GoInt), (trailerField : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
