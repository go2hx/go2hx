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
@:structInit @:using(stdgo._internal.regexp.Regexp_ReplaceTest_static_extension.ReplaceTest_static_extension) class ReplaceTest {
    public var _pattern : stdgo.GoString = "";
    public var _replacement : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public function new(?_pattern:stdgo.GoString, ?_replacement:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString) {
        if (_pattern != null) this._pattern = _pattern;
        if (_replacement != null) this._replacement = _replacement;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReplaceTest(_pattern, _replacement, _input, _output);
    }
}
