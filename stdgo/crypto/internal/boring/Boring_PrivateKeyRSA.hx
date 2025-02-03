package stdgo.crypto.internal.boring;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyRSA_static_extension) abstract PrivateKeyRSA(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA) from stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA to stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA {
    public var __4(get, set) : StdTypes.Int;
    function get___4():StdTypes.Int return this.__4;
    function set___4(v:StdTypes.Int):StdTypes.Int {
        this.__4 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__4:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA((__4 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
