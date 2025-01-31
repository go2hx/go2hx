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
@:keep class T_input_static_extension {
    @:interfacetypeffun
    static public function _context(t:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag return t._context(_pos);
    @:interfacetypeffun
    static public function _index(t:stdgo._internal.regexp.Regexp_T_input.T_input, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return t._index(_re, _pos);
    @:interfacetypeffun
    static public function _hasPrefix(t:stdgo._internal.regexp.Regexp_T_input.T_input, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool return t._hasPrefix(_re);
    @:interfacetypeffun
    static public function _canCheckPrefix(t:stdgo._internal.regexp.Regexp_T_input.T_input):Bool return t._canCheckPrefix();
    @:interfacetypeffun
    static public function _step(t:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return t._step(_pos);
}
