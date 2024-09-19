package _internal.encoding.json_test;
@:structInit class T_exampleUnmarshal___localname___Animal_809 {
    public var name : stdgo.GoString = "";
    public var order : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?order:stdgo.GoString) {
        if (name != null) this.name = name;
        if (order != null) this.order = order;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleUnmarshal___localname___Animal_809(name, order);
    }
}
