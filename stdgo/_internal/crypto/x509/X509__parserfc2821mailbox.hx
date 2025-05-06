package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _localPartBytes_0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_4:Bool = false;
        var _twoDots_3:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L224"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5607946i64;
                    } else {
                        _gotoNext = 5607977i64;
                    };
                } else if (__value__ == (5607946i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L225"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5607977i64;
                } else if (__value__ == (5607977i64)) {
                    _localPartBytes_0 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L230"
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608040i64;
                    } else {
                        _gotoNext = 5609544i64;
                    };
                } else if (__value__ == (5608040i64)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608529i64;
                } else if (__value__ == (5608529i64)) {
                    0i64;
                    quotedStringBreak = false;
                    _gotoNext = 5608545i64;
                } else if (__value__ == (5608545i64)) {
                    //"file://#L0"
                    if (!quotedStringBreak) {
                        _gotoNext = 5608549i64;
                    } else {
                        _gotoNext = 5610889i64;
                    };
                } else if (__value__ == (5608549i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L244"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608570i64;
                    } else {
                        _gotoNext = 5608606i64;
                    };
                } else if (__value__ == (5608570i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L245"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608606i64;
                } else if (__value__ == (5608606i64)) {
                    _c_1 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608636i64;
                } else if (__value__ == (5608636i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L250"
                    if (_c_1 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608648i64;
                    } else if (_c_1 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5608690i64;
                    } else if (((((((((_c_1 == ((11 : stdgo.GoUInt8)) || _c_1 == ((12 : stdgo.GoUInt8)) : Bool) || _c_1 == ((32 : stdgo.GoUInt8)) : Bool) || _c_1 == ((33 : stdgo.GoUInt8)) : Bool) || _c_1 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5609013i64;
                    } else {
                        _gotoNext = 5609492i64;
                    };
                } else if (__value__ == (5608648i64)) {
                    quotedStringBreak = true;
                    _gotoNext = 5608545i64;
                } else if (__value__ == (5608690i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L256"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608745i64;
                    } else {
                        _gotoNext = 5608784i64;
                    };
                } else if (__value__ == (5608745i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L257"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608784i64;
                } else if (__value__ == (5608784i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L259"
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5608892i64;
                    } else {
                        _gotoNext = 5608974i64;
                    };
                } else if (__value__ == (5608892i64)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_in[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608545i64;
                } else if (__value__ == (5608974i64)) {
                    _gotoNext = 5608974i64;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L266"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    0i64;
                    _gotoNext = 5608545i64;
                } else if (__value__ == (5609013i64)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_c_1) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 5608545i64;
                } else if (__value__ == (5609492i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L287"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608545i64;
                } else if (__value__ == (5609544i64)) {
                    _gotoNext = 5609544i64;
                    _gotoNext = 5609569i64;
                } else if (__value__ == (5609569i64)) {
                    0i64;
                    nextCharBreak = false;
                    _gotoNext = 5609581i64;
                } else if (__value__ == (5609581i64)) {
                    //"file://#L0"
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5609597i64;
                    } else {
                        _gotoNext = 5610454i64;
                    };
                } else if (__value__ == (5609597i64)) {
                    _c_2 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5609658i64;
                } else if (__value__ == (5609658i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L297"
                    if (_c_2 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5609670i64;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_2 == ((33 : stdgo.GoUInt8)) : Bool) || _c_2 == ((35 : stdgo.GoUInt8)) : Bool) || _c_2 == ((36 : stdgo.GoUInt8)) : Bool) || _c_2 == ((37 : stdgo.GoUInt8)) : Bool) || _c_2 == ((38 : stdgo.GoUInt8)) : Bool) || _c_2 == ((39 : stdgo.GoUInt8)) : Bool) || _c_2 == ((42 : stdgo.GoUInt8)) : Bool) || _c_2 == ((43 : stdgo.GoUInt8)) : Bool) || _c_2 == ((45 : stdgo.GoUInt8)) : Bool) || _c_2 == ((47 : stdgo.GoUInt8)) : Bool) || _c_2 == ((61 : stdgo.GoUInt8)) : Bool) || _c_2 == ((63 : stdgo.GoUInt8)) : Bool) || _c_2 == ((94 : stdgo.GoUInt8)) : Bool) || _c_2 == ((95 : stdgo.GoUInt8)) : Bool) || _c_2 == ((96 : stdgo.GoUInt8)) : Bool) || _c_2 == ((123 : stdgo.GoUInt8)) : Bool) || _c_2 == ((124 : stdgo.GoUInt8)) : Bool) || _c_2 == ((125 : stdgo.GoUInt8)) : Bool) || _c_2 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_2 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5609993i64;
                    } else {
                        _gotoNext = 5610414i64;
                    };
                } else if (__value__ == (5609670i64)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L305"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5609938i64;
                    } else {
                        _gotoNext = 5609977i64;
                    };
                } else if (__value__ == (5609938i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L306"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5609977i64;
                } else if (__value__ == (5609977i64)) {
                    _gotoNext = 5609993i64;
                } else if (__value__ == (5609993i64)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_in[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5609581i64;
                } else if (__value__ == (5610414i64)) {
                    nextCharBreak = true;
                    _gotoNext = 5609581i64;
                } else if (__value__ == (5610454i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L326"
                    if ((_localPartBytes_0.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5610482i64;
                    } else {
                        _gotoNext = 5610698i64;
                    };
                } else if (__value__ == (5610482i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L327"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5610698i64;
                } else if (__value__ == (5610698i64)) {
                    _twoDots_3 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L335"
                    if (((_localPartBytes_0[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_0[((_localPartBytes_0.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_0, _twoDots_3) : Bool)) {
                        _gotoNext = 5610853i64;
                    } else {
                        _gotoNext = 5610889i64;
                    };
                } else if (__value__ == (5610853i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L338"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5610889i64;
                } else if (__value__ == (5610889i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L342"
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5610921i64;
                    } else {
                        _gotoNext = 5610951i64;
                    };
                } else if (__value__ == (5610921i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L343"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5610951i64;
                } else if (__value__ == (5610951i64)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L350"
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_4 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_4) {
                            _gotoNext = 5611162i64;
                        } else {
                            _gotoNext = 5611193i64;
                        };
                    };
                } else if (__value__ == (5611162i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L351"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5611193i64;
                } else if (__value__ == (5611193i64)) {
                    _mailbox._local = (_localPartBytes_0 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L356"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
