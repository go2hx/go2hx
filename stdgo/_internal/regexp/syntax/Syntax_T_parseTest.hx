package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_T_parseTest_static_extension.T_parseTest_static_extension) class T_parseTest {
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
