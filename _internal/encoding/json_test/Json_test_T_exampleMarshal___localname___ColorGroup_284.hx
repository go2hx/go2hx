package _internal.encoding.json_test;
@:structInit class T_exampleMarshal___localname___ColorGroup_284 {
    public var id : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public var colors : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?id:stdgo.GoInt, ?name:stdgo.GoString, ?colors:stdgo.Slice<stdgo.GoString>) {
        if (id != null) this.id = id;
        if (name != null) this.name = name;
        if (colors != null) this.colors = colors;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleMarshal___localname___ColorGroup_284(id, name, colors);
    }
}
