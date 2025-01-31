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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_subexpCase_static_extension.T_subexpCase_static_extension) class T_subexpCase {
    public var _input : stdgo.GoString = "";
    public var _num : stdgo.GoInt = 0;
    public var _names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _indices : stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex>);
    public function new(?_input:stdgo.GoString, ?_num:stdgo.GoInt, ?_names:stdgo.Slice<stdgo.GoString>, ?_indices:stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex>) {
        if (_input != null) this._input = _input;
        if (_num != null) this._num = _num;
        if (_names != null) this._names = _names;
        if (_indices != null) this._indices = _indices;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subexpCase(_input, _num, _names, _indices);
    }
}
