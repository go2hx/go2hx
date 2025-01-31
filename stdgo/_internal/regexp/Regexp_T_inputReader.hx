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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension) class T_inputReader {
    public var _r : stdgo._internal.io.Io_RuneReader.RuneReader = (null : stdgo._internal.io.Io_RuneReader.RuneReader);
    public var _atEOT : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_RuneReader.RuneReader, ?_atEOT:Bool, ?_pos:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_atEOT != null) this._atEOT = _atEOT;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputReader(_r, _atEOT, _pos);
    }
}
