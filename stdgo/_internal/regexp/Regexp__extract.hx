package stdgo._internal.regexp;
function _extract(_str:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        var _name = ("" : stdgo.GoString), _num = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L982"
        if (_str == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L983"
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        var _brace = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L986"
        if (_str[(0 : stdgo.GoInt)] == ((123 : stdgo.GoUInt8))) {
            _brace = true;
            _str = (_str.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L991"
        while ((_i < (_str.length) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_str.__slice__(_i) : stdgo.GoString)?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L993"
            if (((!stdgo._internal.unicode.Unicode_isletter.isLetter(_rune) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_rune) : Bool) && (_rune != (95 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L994"
                break;
            };
            _i = (_i + (_size) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L998"
        if (_i == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1000"
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        _name = (_str.__slice__(0, _i) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1003"
        if (_brace) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1004"
            if (((_i >= (_str.length) : Bool) || (_str[(_i : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1006"
                return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1008"
            _i++;
        };
        _num = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1013"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_name.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1014"
                if ((((_name[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) || ((57 : stdgo.GoUInt8) < _name[(_i : stdgo.GoInt)] : Bool) : Bool) || (_num >= (100000000 : stdgo.GoInt) : Bool) : Bool)) {
                    _num = (-1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1016"
                    break;
                };
_num = (((_num * (10 : stdgo.GoInt) : stdgo.GoInt) + (_name[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1021"
        if (((_name[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && ((_name.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _num = (-1 : stdgo.GoInt);
        };
        _rest = (_str.__slice__(_i) : stdgo.GoString)?.__copy__();
        _ok = true;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1027"
        return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
    }
