package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_basicConstraints_static_extension) abstract T_basicConstraints(stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints) from stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints to stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints {
    public var isCA(get, set) : Bool;
    function get_isCA():Bool return this.isCA;
    function set_isCA(v:Bool):Bool {
        this.isCA = v;
        return v;
    }
    public var maxPathLen(get, set) : StdTypes.Int;
    function get_maxPathLen():StdTypes.Int return this.maxPathLen;
    function set_maxPathLen(v:StdTypes.Int):StdTypes.Int {
        this.maxPathLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?isCA:Bool, ?maxPathLen:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints(isCA, (maxPathLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
