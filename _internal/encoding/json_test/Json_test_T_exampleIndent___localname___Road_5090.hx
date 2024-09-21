package _internal.encoding.json_test;
@:structInit class T_exampleIndent___localname___Road_5090 {
    public var name : stdgo.GoString = "";
    public var number : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?number:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (number != null) this.number = number;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleIndent___localname___Road_5090(name, number);
    }
}
