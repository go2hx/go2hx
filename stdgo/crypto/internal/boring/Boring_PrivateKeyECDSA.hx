package stdgo.crypto.internal.boring;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyECDSA_static_extension) abstract PrivateKeyECDSA(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA) from stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA to stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA {
    public var __2(get, set) : StdTypes.Int;
    function get___2():StdTypes.Int return this.__2;
    function set___2(v:StdTypes.Int):StdTypes.Int {
        this.__2 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__2:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA((__2 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
