package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_method_static_extension.Method_static_extension) class Method {
    public var name : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var mtyp : stdgo._internal.internal.abi.Abi_typeoff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_typeoff.TypeOff);
    public var ifn : stdgo._internal.internal.abi.Abi_textoff.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_textoff.TextOff);
    public var tfn : stdgo._internal.internal.abi.Abi_textoff.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_textoff.TextOff);
    public function new(?name:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?mtyp:stdgo._internal.internal.abi.Abi_typeoff.TypeOff, ?ifn:stdgo._internal.internal.abi.Abi_textoff.TextOff, ?tfn:stdgo._internal.internal.abi.Abi_textoff.TextOff) {
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
