package stdgo._internal.encoding.json;
@:structInit class T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 {
    @:tag("`json:\"F1,string\"`")
    public var f1 : stdgo.GoString = "";
    public function new(?f1:stdgo.GoString) {
        if (f1 != null) this.f1 = f1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(f1);
    }
}
