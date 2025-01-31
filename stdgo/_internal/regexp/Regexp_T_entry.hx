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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _t : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>);
    public function new(?_pc:stdgo.GoUInt32, ?_t:stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>) {
        if (_pc != null) this._pc = _pc;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_pc, _t);
    }
}
