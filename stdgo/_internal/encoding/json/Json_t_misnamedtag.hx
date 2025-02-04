package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_misnamedtag_static_extension.T_misnamedTag_static_extension) class T_misnamedTag {
    @:tag("`jsom:\"Misnamed\"`")
    public var x : stdgo.GoString = "";
    public function new(?x:stdgo.GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_misnamedTag(x);
    }
}
