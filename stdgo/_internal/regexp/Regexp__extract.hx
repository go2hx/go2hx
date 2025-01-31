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
function _extract(_str:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        var _name = ("" : stdgo.GoString), _num = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if (_str == (stdgo.Go.str())) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        var _brace = (false : Bool);
        if (_str[(0 : stdgo.GoInt)] == ((123 : stdgo.GoUInt8))) {
            _brace = true;
            _str = (_str.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _i = (0 : stdgo.GoInt);
        while ((_i < (_str.length) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_str.__slice__(_i) : stdgo.GoString)?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((!stdgo._internal.unicode.Unicode_isLetter.isLetter(_rune) && !stdgo._internal.unicode.Unicode_isDigit.isDigit(_rune) : Bool) && (_rune != (95 : stdgo.GoInt32)) : Bool)) {
                break;
            };
            _i = (_i + (_size) : stdgo.GoInt);
        };
        if (_i == ((0 : stdgo.GoInt))) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        _name = (_str.__slice__(0, _i) : stdgo.GoString)?.__copy__();
        if (_brace) {
            if (((_i >= (_str.length) : Bool) || (_str[(_i : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
            };
            _i++;
        };
        _num = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_name.length) : Bool)) {
                if ((((_name[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) || ((57 : stdgo.GoUInt8) < _name[(_i : stdgo.GoInt)] : Bool) : Bool) || (_num >= (100000000 : stdgo.GoInt) : Bool) : Bool)) {
                    _num = (-1 : stdgo.GoInt);
                    break;
                };
_num = (((_num * (10 : stdgo.GoInt) : stdgo.GoInt) + (_name[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        if (((_name[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && ((_name.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _num = (-1 : stdgo.GoInt);
        };
        _rest = (_str.__slice__(_i) : stdgo.GoString)?.__copy__();
        _ok = true;
        return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
    }
