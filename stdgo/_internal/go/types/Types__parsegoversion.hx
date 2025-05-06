package stdgo._internal.go.types;
function _parseGoVersion(_s:stdgo.GoString):{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } {
        var _v = ({} : stdgo._internal.go.types.Types_t_version.T_version), _err = (null : stdgo.Error);
        var _bad = (function():{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L52"
            return { _0 : (new stdgo._internal.go.types.Types_t_version.T_version() : stdgo._internal.go.types.Types_t_version.T_version), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid Go version syntax %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
        } : () -> { var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; });
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L54"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L55"
            return { _0 : _v, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L57"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), ("go" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L58"
            return _bad();
        };
        _s = (_s.__slice__(((("go" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L62"
        while ((((_i < (_s.length) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L63"
            if (((_i >= (10 : stdgo.GoInt) : Bool) || (_i == ((0 : stdgo.GoInt)) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L64"
                return _bad();
            };
_v._major = ((((10 : stdgo.GoInt) * _v._major : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L68"
        if (((_i > (0 : stdgo.GoInt) : Bool) && (_i == (_s.length)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L69"
            return { _0 : _v, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L71"
        if (((_i == (0 : stdgo.GoInt)) || (_s[(_i : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L72"
            return _bad();
        };
        _s = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L75"
        if (_s == (("0" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L80"
            return { _0 : _v, _1 : _err };
        };
        _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L83"
        while ((((_i < (_s.length) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L84"
            if (((_i >= (10 : stdgo.GoInt) : Bool) || (_i == ((0 : stdgo.GoInt)) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L85"
                return _bad();
            };
_v._minor = ((((10 : stdgo.GoInt) * _v._minor : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L93"
        return { _0 : _v, _1 : _err };
    }
