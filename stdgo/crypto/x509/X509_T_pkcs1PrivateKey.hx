package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs1PrivateKey_static_extension) abstract T_pkcs1PrivateKey(stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey) from stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey to stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var n(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_n():stdgo._internal.math.big.Big_Int_.Int_ return this.n;
    function set_n(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.n = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var e(get, set) : StdTypes.Int;
    function get_e():StdTypes.Int return this.e;
    function set_e(v:StdTypes.Int):StdTypes.Int {
        this.e = (v : stdgo.GoInt);
        return v;
    }
    public var d(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_d():stdgo._internal.math.big.Big_Int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.d = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var p(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_p():stdgo._internal.math.big.Big_Int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.p = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var q(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_q():stdgo._internal.math.big.Big_Int_.Int_ return this.q;
    function set_q(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.q = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var dp(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_dp():stdgo._internal.math.big.Big_Int_.Int_ return this.dp;
    function set_dp(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.dp = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var dq(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_dq():stdgo._internal.math.big.Big_Int_.Int_ return this.dq;
    function set_dq(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.dq = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var qinv(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_qinv():stdgo._internal.math.big.Big_Int_.Int_ return this.qinv;
    function set_qinv(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.qinv = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var additionalPrimes(get, set) : Array<T_pkcs1AdditionalRSAPrime>;
    function get_additionalPrimes():Array<T_pkcs1AdditionalRSAPrime> return [for (i in this.additionalPrimes) i];
    function set_additionalPrimes(v:Array<T_pkcs1AdditionalRSAPrime>):Array<T_pkcs1AdditionalRSAPrime> {
        this.additionalPrimes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>);
        return v;
    }
    public function new(?version:StdTypes.Int, ?n:stdgo._internal.math.big.Big_Int_.Int_, ?e:StdTypes.Int, ?d:stdgo._internal.math.big.Big_Int_.Int_, ?p:stdgo._internal.math.big.Big_Int_.Int_, ?q:stdgo._internal.math.big.Big_Int_.Int_, ?dp:stdgo._internal.math.big.Big_Int_.Int_, ?dq:stdgo._internal.math.big.Big_Int_.Int_, ?qinv:stdgo._internal.math.big.Big_Int_.Int_, ?additionalPrimes:Array<T_pkcs1AdditionalRSAPrime>) this = new stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey((version : stdgo.GoInt), (n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (e : stdgo.GoInt), (d : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (q : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (dp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (dq : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (qinv : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), ([for (i in additionalPrimes) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
