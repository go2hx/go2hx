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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_job_static_extension.T_job_static_extension) class T_job {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _arg : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_pc:stdgo.GoUInt32, ?_arg:Bool, ?_pos:stdgo.GoInt) {
        if (_pc != null) this._pc = _pc;
        if (_arg != null) this._arg = _arg;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_job(_pc, _arg, _pos);
    }
}
