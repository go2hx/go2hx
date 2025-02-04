package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_parsetest_static_extension.T_parseTest_static_extension) class T_parseTest {
    public var regexp : stdgo.GoString = "";
    public var dump : stdgo.GoString = "";
    public function new(?regexp:stdgo.GoString, ?dump:stdgo.GoString) {
        if (regexp != null) this.regexp = regexp;
        if (dump != null) this.dump = dump;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseTest(regexp, dump);
    }
}
