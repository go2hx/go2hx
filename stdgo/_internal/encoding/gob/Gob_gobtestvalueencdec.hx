package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtestvalueencdec_static_extension.GobTestValueEncDec_static_extension) class GobTestValueEncDec {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct = ({} : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct);
    public function new(?x:stdgo.GoInt, ?g:stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestValueEncDec(x, g);
    }
}
