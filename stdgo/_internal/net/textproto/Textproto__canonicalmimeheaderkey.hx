package stdgo._internal.net.textproto;
function _canonicalMIMEHeaderKey(_a:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _0 = ("" : stdgo.GoString), _ok = false;
        var _noCanon = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L730"
        for (__0 => _c in _a) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L731"
            if (stdgo._internal.net.textproto.Textproto__validheaderfieldbyte._validHeaderFieldByte(_c)) {
                //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L732"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L735"
            if (_c == ((32 : stdgo.GoUInt8))) {
                _noCanon = true;
                //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L740"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L742"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_a : stdgo.GoString)?.__copy__(), _1 : false };
                _0 = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L744"
        if (_noCanon) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L745"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_a : stdgo.GoString)?.__copy__(), _1 : true };
                _0 = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _upper = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L749"
        for (_i => _c in _a) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L754"
            if (((_upper && ((97 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            } else if (((!_upper && ((65 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            _a[(_i : stdgo.GoInt)] = _c;
            _upper = _c == ((45 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L762"
        stdgo._internal.net.textproto.Textproto__commonheaderonce._commonHeaderOnce.do_(stdgo._internal.net.textproto.Textproto__initcommonheader._initCommonHeader);
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L766"
        {
            var _v = ((stdgo._internal.net.textproto.Textproto__commonheader._commonHeader[(_a : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L767"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _v?.__copy__(), _1 : true };
                    _0 = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L769"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_a : stdgo.GoString)?.__copy__(), _1 : true };
            _0 = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
