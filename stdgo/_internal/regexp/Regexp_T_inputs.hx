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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension) class T_inputs {
    public var _bytes : stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes = ({} : stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes);
    public var _string : stdgo._internal.regexp.Regexp_T_inputString.T_inputString = ({} : stdgo._internal.regexp.Regexp_T_inputString.T_inputString);
    public var _reader : stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader = ({} : stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader);
    public function new(?_bytes:stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes, ?_string:stdgo._internal.regexp.Regexp_T_inputString.T_inputString, ?_reader:stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader) {
        if (_bytes != null) this._bytes = _bytes;
        if (_string != null) this._string = _string;
        if (_reader != null) this._reader = _reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputs(_bytes, _string, _reader);
    }
}
