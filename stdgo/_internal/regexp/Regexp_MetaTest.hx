package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_MetaTest_static_extension.MetaTest_static_extension) class MetaTest {
    public var _pattern : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public var _literal : stdgo.GoString = "";
    public var _isLiteral : Bool = false;
    public function new(?_pattern:stdgo.GoString, ?_output:stdgo.GoString, ?_literal:stdgo.GoString, ?_isLiteral:Bool) {
        if (_pattern != null) this._pattern = _pattern;
        if (_output != null) this._output = _output;
        if (_literal != null) this._literal = _literal;
        if (_isLiteral != null) this._isLiteral = _isLiteral;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MetaTest(_pattern, _output, _literal, _isLiteral);
    }
}
