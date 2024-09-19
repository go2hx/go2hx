package stdgo._internal.encoding.json;
@:structInit class T_misnamedTag {
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
