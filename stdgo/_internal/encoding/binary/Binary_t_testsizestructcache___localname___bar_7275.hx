package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___bar_7275_static_extension.T_testSizeStructCache___localname___bar_7275_static_extension) class T_testSizeStructCache___localname___bar_7275 {
    public var a : stdgo._internal.encoding.binary.Binary_struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_struct.Struct);
    public var b : stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241 = ({} : stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241);
    public var c : stdgo._internal.encoding.binary.Binary_struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_struct.Struct);
    public function new(?a:stdgo._internal.encoding.binary.Binary_struct.Struct, ?b:stdgo._internal.encoding.binary.Binary_t_testsizestructcache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241, ?c:stdgo._internal.encoding.binary.Binary_struct.Struct) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache___localname___bar_7275(a, b, c);
    }
}
