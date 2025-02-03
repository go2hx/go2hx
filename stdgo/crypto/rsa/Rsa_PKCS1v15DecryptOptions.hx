package stdgo.crypto.rsa;
@:structInit @:using(stdgo.crypto.rsa.Rsa.PKCS1v15DecryptOptions_static_extension) abstract PKCS1v15DecryptOptions(stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions) from stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions to stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions {
    public var sessionKeyLen(get, set) : StdTypes.Int;
    function get_sessionKeyLen():StdTypes.Int return this.sessionKeyLen;
    function set_sessionKeyLen(v:StdTypes.Int):StdTypes.Int {
        this.sessionKeyLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?sessionKeyLen:StdTypes.Int) this = new stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions((sessionKeyLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
