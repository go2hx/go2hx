package stdgo._internal.crypto.sha256;
@:structInit @:using(stdgo._internal.crypto.sha256.Sha256_t_cgodata_static_extension.T_cgoData_static_extension) class T_cgoData {
    public var data : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var ptr : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData> = (null : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData>);
    public function new(?data:stdgo.GoArray<stdgo.GoUInt8>, ?ptr:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_cgodata.T_cgoData>) {
        if (data != null) this.data = data;
        if (ptr != null) this.ptr = ptr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cgoData(data, ptr);
    }
}
