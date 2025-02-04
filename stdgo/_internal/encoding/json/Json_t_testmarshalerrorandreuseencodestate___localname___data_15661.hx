package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661_static_extension.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661_static_extension) class T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 {
    public var a : stdgo.GoString = "";
    public var i : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoString, ?i:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(a, i);
    }
}
