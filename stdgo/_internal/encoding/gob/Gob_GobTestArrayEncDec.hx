package stdgo._internal.encoding.gob;
@:structInit class GobTestArrayEncDec {
    public var x : stdgo.GoInt = 0;
    public var a : stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct = ({} : stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct);
    public function new(?x:stdgo.GoInt, ?a:stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestArrayEncDec(x, a);
    }
}
