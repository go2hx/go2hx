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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_subexpIndex_static_extension.T_subexpIndex_static_extension) class T_subexpIndex {
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_index:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subexpIndex(_name, _index);
    }
}
