package stdgo._internal.crypto.x509;
function _domainToReverseLabels(_domain:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } {
        var _reverseLabels = (null : stdgo.Slice<stdgo.GoString>), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L362"
        while (((_domain.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L363"
            {
                var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_domain?.__copy__(), (46 : stdgo.GoUInt8)) : stdgo.GoInt);
                if (_i == ((-1 : stdgo.GoInt))) {
                    _reverseLabels = (_reverseLabels.__append__(_domain?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    _domain = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                } else {
                    _reverseLabels = (_reverseLabels.__append__((_domain.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    _domain = (_domain.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L372"
        if ((((_reverseLabels.length) > (0 : stdgo.GoInt) : Bool) && (_reverseLabels[(0 : stdgo.GoInt)].length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L374"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                _reverseLabels = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L377"
        for (__1 => _label in _reverseLabels) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L378"
            if ((_label.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L380"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                    _reverseLabels = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L383"
            for (__2 => _c in _label) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L384"
                if (((_c < (33 : stdgo.GoInt32) : Bool) || (_c > (126 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L386"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                        _reverseLabels = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L391"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : _reverseLabels, _1 : true };
            _reverseLabels = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
