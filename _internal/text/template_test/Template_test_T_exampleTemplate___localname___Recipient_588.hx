package _internal.text.template_test;
@:structInit class T_exampleTemplate___localname___Recipient_588 {
    public var name : stdgo.GoString = "";
    public var gift : stdgo.GoString = "";
    public var attended : Bool = false;
    public function new(?name:stdgo.GoString, ?gift:stdgo.GoString, ?attended:Bool) {
        if (name != null) this.name = name;
        if (gift != null) this.gift = gift;
        if (attended != null) this.attended = attended;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleTemplate___localname___Recipient_588(name, gift, attended);
    }
}
