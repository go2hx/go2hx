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
function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        if (((stdgo._internal.regexp.Regexp__text._text.length) >= _n : Bool)) {
            return (stdgo._internal.regexp.Regexp__text._text.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo._internal.regexp.Regexp__text._text = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _x = (-1u32 : stdgo.GoUInt32);
        for (_i => _ in stdgo._internal.regexp.Regexp__text._text) {
            _x = (_x + (_x) : stdgo.GoUInt32);
            _x = (_x ^ ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            if (((_x : stdgo.GoInt32) < (0 : stdgo.GoInt32) : Bool)) {
                _x = (_x ^ ((-2004316433u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            if ((_x % (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                stdgo._internal.regexp.Regexp__text._text[(_i : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            } else {
                stdgo._internal.regexp.Regexp__text._text[(_i : stdgo.GoInt)] = (((_x % (95u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
        };
        return stdgo._internal.regexp.Regexp__text._text;
    }
