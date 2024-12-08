package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _twoDots_5600013:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5598958:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5597921:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5597292:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5600440:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5597261i32;
                    } else {
                        _gotoNext = 5597292i32;
                    };
                } else if (__value__ == (5597261i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5597292i32;
                } else if (__value__ == (5597292i32)) {
                    _localPartBytes_5597292 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5597355i32;
                    } else {
                        _gotoNext = 5598859i32;
                    };
                } else if (__value__ == (5597355i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5597844i32;
                } else if (__value__ == (5597844i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5597860i32;
                } else if (__value__ == (5597860i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5597864i32;
                    } else {
                        _gotoNext = 5600204i32;
                    };
                } else if (__value__ == (5597864i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5597885i32;
                    } else {
                        _gotoNext = 5597921i32;
                    };
                } else if (__value__ == (5597885i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5597921i32;
                } else if (__value__ == (5597921i32)) {
                    _c_5597921 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5597951i32;
                } else if (__value__ == (5597951i32)) {
                    if (_c_5597921 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5597963i32;
                    } else if (_c_5597921 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5598005i32;
                    } else if (((((((((_c_5597921 == ((11 : stdgo.GoUInt8)) || _c_5597921 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5597921 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5597921 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5597921 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5597921 : Bool) && (_c_5597921 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5597921 : Bool) && (_c_5597921 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5597921 : Bool) && (_c_5597921 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5597921 : Bool) && (_c_5597921 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5598328i32;
                    } else {
                        _gotoNext = 5598807i32;
                    };
                } else if (__value__ == (5597963i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5597860i32;
                } else if (__value__ == (5598005i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5598060i32;
                    } else {
                        _gotoNext = 5598099i32;
                    };
                } else if (__value__ == (5598060i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5598099i32;
                } else if (__value__ == (5598099i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5598207i32;
                    } else {
                        _gotoNext = 5598289i32;
                    };
                } else if (__value__ == (5598207i32)) {
                    _localPartBytes_5597292 = (_localPartBytes_5597292.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5600204i32;
                } else if (__value__ == (5598289i32)) {
                    _gotoNext = 5598289i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5600204i32;
                } else if (__value__ == (5598328i32)) {
                    _localPartBytes_5597292 = (_localPartBytes_5597292.__append__(_c_5597921));
                    _gotoNext = 5600204i32;
                } else if (__value__ == (5598807i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5600204i32;
                } else if (__value__ == (5598859i32)) {
                    _gotoNext = 5598859i32;
                    _gotoNext = 5598884i32;
                } else if (__value__ == (5598884i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5598896i32;
                } else if (__value__ == (5598896i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5598912i32;
                    } else {
                        _gotoNext = 5599769i32;
                    };
                } else if (__value__ == (5598912i32)) {
                    _c_5598958 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5598973i32;
                } else if (__value__ == (5598973i32)) {
                    if (_c_5598958 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5598985i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5598958 : Bool) && (_c_5598958 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5598958 : Bool) && (_c_5598958 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5598958 : Bool) && (_c_5598958 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5598958 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5598958 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5598958 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5599308i32;
                    } else {
                        _gotoNext = 5599729i32;
                    };
                } else if (__value__ == (5598985i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5599253i32;
                    } else {
                        _gotoNext = 5599292i32;
                    };
                } else if (__value__ == (5599253i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5599292i32;
                } else if (__value__ == (5599292i32)) {
                    _gotoNext = 5599308i32;
                } else if (__value__ == (5599308i32)) {
                    _localPartBytes_5597292 = (_localPartBytes_5597292.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5599769i32;
                } else if (__value__ == (5599729i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5598896i32;
                } else if (__value__ == (5599769i32)) {
                    if ((_localPartBytes_5597292.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5599797i32;
                    } else {
                        _gotoNext = 5600013i32;
                    };
                } else if (__value__ == (5599797i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5600013i32;
                } else if (__value__ == (5600013i32)) {
                    _twoDots_5600013 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5597292[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5597292[((_localPartBytes_5597292.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5597292, _twoDots_5600013) : Bool)) {
                        _gotoNext = 5600168i32;
                    } else {
                        _gotoNext = 5600204i32;
                    };
                } else if (__value__ == (5600168i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5600204i32;
                } else if (__value__ == (5600204i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5600236i32;
                    } else {
                        _gotoNext = 5600266i32;
                    };
                } else if (__value__ == (5600236i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5600266i32;
                } else if (__value__ == (5600266i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5600440 = __tmp__._1;
                        };
                        if (!_ok_5600440) {
                            _gotoNext = 5600477i32;
                        } else {
                            _gotoNext = 5600508i32;
                        };
                    };
                } else if (__value__ == (5600477i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5600508i32;
                } else if (__value__ == (5600508i32)) {
                    _mailbox._local = (_localPartBytes_5597292 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
