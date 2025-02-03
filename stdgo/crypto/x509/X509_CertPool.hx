package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.CertPool_static_extension) abstract CertPool(stdgo._internal.crypto.x509.X509_CertPool.CertPool) from stdgo._internal.crypto.x509.X509_CertPool.CertPool to stdgo._internal.crypto.x509.X509_CertPool.CertPool {
    public var _byName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>;
    function get__byName():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> return this._byName;
    function set__byName(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> {
        this._byName = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public var _lazyCerts(get, set) : Array<T_lazyCert>;
    function get__lazyCerts():Array<T_lazyCert> return [for (i in this._lazyCerts) i];
    function set__lazyCerts(v:Array<T_lazyCert>):Array<T_lazyCert> {
        this._lazyCerts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>);
        return v;
    }
    public var _haveSum(get, set) : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>;
    function get__haveSum():stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool> return this._haveSum;
    function set__haveSum(v:stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>):stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool> {
        this._haveSum = (v : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>);
        return v;
    }
    public var _systemPool(get, set) : Bool;
    function get__systemPool():Bool return this._systemPool;
    function set__systemPool(v:Bool):Bool {
        this._systemPool = v;
        return v;
    }
    public function new(?_byName:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>, ?_lazyCerts:Array<T_lazyCert>, ?_haveSum:stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>, ?_systemPool:Bool) this = new stdgo._internal.crypto.x509.X509_CertPool.CertPool((_byName : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>), ([for (i in _lazyCerts) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>), (_haveSum : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>), _systemPool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
