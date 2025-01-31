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
function quoteMeta(_s:stdgo.GoString):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (stdgo._internal.regexp.Regexp__special._special(_s[(_i : stdgo.GoInt)])) {
                    break;
                };
                _i++;
            };
        };
        if ((_i >= (_s.length) : Bool)) {
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) - _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.__copyTo__((_s.__slice__(0, _i) : stdgo.GoString));
        var _j = (_i : stdgo.GoInt);
        while ((_i < (_s.length) : Bool)) {
            if (stdgo._internal.regexp.Regexp__special._special(_s[(_i : stdgo.GoInt)])) {
                _b[(_j : stdgo.GoInt)] = (92 : stdgo.GoUInt8);
                _j++;
            };
_b[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
_j++;
            _i++;
        };
        return ((_b.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
