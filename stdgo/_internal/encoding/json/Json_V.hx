package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_V_static_extension.V_static_extension) class V {
    public var f1 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var f2 : stdgo.GoInt32 = 0;
    public var f3 : stdgo._internal.encoding.json.Json_Number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_Number.Number);
    public var f4 : stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter>);
    public function new(?f1:stdgo.AnyInterface, ?f2:stdgo.GoInt32, ?f3:stdgo._internal.encoding.json.Json_Number.Number, ?f4:stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter>) {
        if (f1 != null) this.f1 = f1;
        if (f2 != null) this.f2 = f2;
        if (f3 != null) this.f3 = f3;
        if (f4 != null) this.f4 = f4;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new V(f1, f2, f3, f4);
    }
}
