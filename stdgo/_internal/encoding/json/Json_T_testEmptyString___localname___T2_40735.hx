package stdgo._internal.encoding.json;
@:structInit class T_testEmptyString___localname___T2_40735 {
    @:tag("`json:\",string\"`")
    public var number1 : stdgo.GoInt = 0;
    @:tag("`json:\",string\"`")
    public var number2 : stdgo.GoInt = 0;
    public function new(?number1:stdgo.GoInt, ?number2:stdgo.GoInt) {
        if (number1 != null) this.number1 = number1;
        if (number2 != null) this.number2 = number2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEmptyString___localname___T2_40735(number1, number2);
    }
}
