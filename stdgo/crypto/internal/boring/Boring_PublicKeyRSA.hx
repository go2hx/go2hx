package stdgo.crypto.internal.boring;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyRSA_static_extension) abstract PublicKeyRSA(stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA) from stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA to stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA {
    public var __3(get, set) : StdTypes.Int;
    function get___3():StdTypes.Int return this.__3;
    function set___3(v:StdTypes.Int):StdTypes.Int {
        this.__3 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__3:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA((__3 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
