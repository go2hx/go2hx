package stdgo._internal.regexp.syntax;
@:structInit class T_parseTest {
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
