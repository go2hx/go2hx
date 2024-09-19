package stdgo._internal.encoding.binary;
@:structInit class T_testSizeStructCache___localname___bar_7275 {
    public var a : stdgo._internal.encoding.binary.Binary_Struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_Struct.Struct);
    public var b : stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241 = ({} : stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241);
    public var c : stdgo._internal.encoding.binary.Binary_Struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_Struct.Struct);
    public function new(?a:stdgo._internal.encoding.binary.Binary_Struct.Struct, ?b:stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241, ?c:stdgo._internal.encoding.binary.Binary_Struct.Struct) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache___localname___bar_7275(a, b, c);
    }
}
