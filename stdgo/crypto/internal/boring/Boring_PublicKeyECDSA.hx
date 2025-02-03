package stdgo.crypto.internal.boring;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyECDSA_static_extension) abstract PublicKeyECDSA(stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA) from stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA to stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA {
    public var __1(get, set) : StdTypes.Int;
    function get___1():StdTypes.Int return this.__1;
    function set___1(v:StdTypes.Int):StdTypes.Int {
        this.__1 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__1:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA((__1 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
