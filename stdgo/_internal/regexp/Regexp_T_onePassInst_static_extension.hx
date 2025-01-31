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
@:keep @:allow(stdgo._internal.regexp.Regexp.T_onePassInst_asInterface) class T_onePassInst_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _op( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst):stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return @:_5 __self__._op();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function matchRunePos( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _0:stdgo.GoInt32):stdgo.GoInt return @:_5 __self__.matchRunePos(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function matchRune( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _0:stdgo.GoInt32):Bool return @:_5 __self__.matchRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function matchEmptyWidth( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _0:stdgo.GoInt32, _1:stdgo.GoInt32):Bool return @:_5 __self__.matchEmptyWidth(_0, _1);
}
