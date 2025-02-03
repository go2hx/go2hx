package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.VerifyOptions_static_extension) abstract VerifyOptions(stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions) from stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions to stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions {
    public var dNSName(get, set) : String;
    function get_dNSName():String return this.dNSName;
    function set_dNSName(v:String):String {
        this.dNSName = (v : stdgo.GoString);
        return v;
    }
    public var intermediates(get, set) : CertPool;
    function get_intermediates():CertPool return this.intermediates;
    function set_intermediates(v:CertPool):CertPool {
        this.intermediates = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return v;
    }
    public var roots(get, set) : CertPool;
    function get_roots():CertPool return this.roots;
    function set_roots(v:CertPool):CertPool {
        this.roots = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return v;
    }
    public var currentTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_currentTime():stdgo._internal.time.Time_Time.Time return this.currentTime;
    function set_currentTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.currentTime = v;
        return v;
    }
    public var keyUsages(get, set) : Array<ExtKeyUsage>;
    function get_keyUsages():Array<ExtKeyUsage> return [for (i in this.keyUsages) i];
    function set_keyUsages(v:Array<ExtKeyUsage>):Array<ExtKeyUsage> {
        this.keyUsages = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        return v;
    }
    public var maxConstraintComparisions(get, set) : StdTypes.Int;
    function get_maxConstraintComparisions():StdTypes.Int return this.maxConstraintComparisions;
    function set_maxConstraintComparisions(v:StdTypes.Int):StdTypes.Int {
        this.maxConstraintComparisions = (v : stdgo.GoInt);
        return v;
    }
    public function new(?dNSName:String, ?intermediates:CertPool, ?roots:CertPool, ?currentTime:stdgo._internal.time.Time_Time.Time, ?keyUsages:Array<ExtKeyUsage>, ?maxConstraintComparisions:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions((dNSName : stdgo.GoString), (intermediates : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>), (roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>), currentTime, ([for (i in keyUsages) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>), (maxConstraintComparisions : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
