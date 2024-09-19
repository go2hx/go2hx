package stdgo._internal.internal.abi;
@:structInit class Imethod {
    public var name : stdgo._internal.internal.abi.Abi_NameOff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_NameOff.NameOff);
    public var typ : stdgo._internal.internal.abi.Abi_TypeOff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_TypeOff.TypeOff);
    public function new(?name:stdgo._internal.internal.abi.Abi_NameOff.NameOff, ?typ:stdgo._internal.internal.abi.Abi_TypeOff.TypeOff) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Imethod(name, typ);
    }
}
