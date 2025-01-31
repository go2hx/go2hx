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
@:keep @:allow(stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface) class T_lazyFlag_static_extension {
    @:keep
    @:tdfield
    static public function _match( _f:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag, _op:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp):Bool {
        @:recv var _f:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = _f;
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            return true;
        };
        var _r1 = ((_f >> (32i64 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag) : stdgo.GoInt32);
        if ((_op & (1 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            if (((_r1 != (10 : stdgo.GoInt32)) && (_r1 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
            _op = (_op & ((((1 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        if ((_op & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            if ((_r1 >= (0 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            _op = (_op & ((((4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            return true;
        };
        var _r2 = (_f : stdgo.GoInt32);
        if ((_op & (2 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            if (((_r2 != (10 : stdgo.GoInt32)) && (_r2 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
            _op = (_op & ((((2 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        if ((_op & (8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            if ((_r2 >= (0 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            _op = (_op & ((((8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            return true;
        };
        if (stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r1) != (stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r2))) {
            _op = (_op & ((((16 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        } else {
            _op = (_op & ((((32 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        return _op == ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp));
    }
}
