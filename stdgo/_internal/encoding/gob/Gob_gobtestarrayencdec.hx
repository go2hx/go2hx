package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtestarrayencdec_static_extension.GobTestArrayEncDec_static_extension) class GobTestArrayEncDec {
    public var x : stdgo.GoInt = 0;
    public var a : stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct = ({} : stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct);
    public function new(?x:stdgo.GoInt, ?a:stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestArrayEncDec(x, a);
    }
}
