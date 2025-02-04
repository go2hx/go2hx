package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension) class Name {
    public var bytes : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>) {
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(bytes);
    }
}
