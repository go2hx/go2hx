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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_onePassMachine_static_extension.T_onePassMachine_static_extension) class T_onePassMachine {
    public var _inputs : stdgo._internal.regexp.Regexp_T_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_T_inputs.T_inputs);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_inputs:stdgo._internal.regexp.Regexp_T_inputs.T_inputs, ?_matchcap:stdgo.Slice<stdgo.GoInt>) {
        if (_inputs != null) this._inputs = _inputs;
        if (_matchcap != null) this._matchcap = _matchcap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_onePassMachine(_inputs, _matchcap);
    }
}
