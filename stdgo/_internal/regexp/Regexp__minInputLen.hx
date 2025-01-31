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
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.GoInt {
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _l = (0 : stdgo.GoInt);
                for (__0 => _r in (@:checkr _re ?? throw "null pointer dereference").rune) {
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        _l++;
                    } else {
                        _l = (_l + (stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_r)) : stdgo.GoInt);
                    };
                };
                return _l;
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return stdgo._internal.regexp.Regexp__minInputLen._minInputLen((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return ((@:checkr _re ?? throw "null pointer dereference").min * stdgo._internal.regexp.Regexp__minInputLen._minInputLen((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _l = (0 : stdgo.GoInt);
                for (__0 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                    _l = (_l + (stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_sub)) : stdgo.GoInt);
                };
                return _l;
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _l = (stdgo._internal.regexp.Regexp__minInputLen._minInputLen((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
                var _lnext:stdgo.GoInt = (0 : stdgo.GoInt);
                for (__0 => _sub in ((@:checkr _re ?? throw "null pointer dereference").sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>)) {
                    _lnext = stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_sub);
                    if ((_lnext < _l : Bool)) {
                        _l = _lnext;
                    };
                };
                return _l;
            } else {
                return (0 : stdgo.GoInt);
            };
        };
    }
