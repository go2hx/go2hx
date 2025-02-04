package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_imethod_static_extension.Imethod_static_extension) class Imethod {
    public var name : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var typ : stdgo._internal.internal.abi.Abi_typeoff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_typeoff.TypeOff);
    public function new(?name:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?typ:stdgo._internal.internal.abi.Abi_typeoff.TypeOff) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Imethod(name, typ);
    }
}
