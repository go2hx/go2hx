package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_Method_static_extension.Method_static_extension) class Method {
    public var name : stdgo._internal.internal.abi.Abi_NameOff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_NameOff.NameOff);
    public var mtyp : stdgo._internal.internal.abi.Abi_TypeOff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_TypeOff.TypeOff);
    public var ifn : stdgo._internal.internal.abi.Abi_TextOff.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_TextOff.TextOff);
    public var tfn : stdgo._internal.internal.abi.Abi_TextOff.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_TextOff.TextOff);
    public function new(?name:stdgo._internal.internal.abi.Abi_NameOff.NameOff, ?mtyp:stdgo._internal.internal.abi.Abi_TypeOff.TypeOff, ?ifn:stdgo._internal.internal.abi.Abi_TextOff.TextOff, ?tfn:stdgo._internal.internal.abi.Abi_TextOff.TextOff) {
        if (name != null) this.name = name;
        if (mtyp != null) this.mtyp = mtyp;
        if (ifn != null) this.ifn = ifn;
        if (tfn != null) this.tfn = tfn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Method(name, mtyp, ifn, tfn);
    }
}
