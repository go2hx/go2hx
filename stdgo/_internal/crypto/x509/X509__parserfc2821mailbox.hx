package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5507628:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5510776:Bool = false;
        var _twoDots_5510349:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5509294:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5508257:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5507597i32;
                    } else {
                        _gotoNext = 5507628i32;
                    };
                } else if (__value__ == (5507597i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5507628i32;
                } else if (__value__ == (5507628i32)) {
                    _localPartBytes_5507628 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5507691i32;
                    } else {
                        _gotoNext = 5509195i32;
                    };
                } else if (__value__ == (5507691i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5508180i32;
                } else if (__value__ == (5508180i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5508196i32;
                } else if (__value__ == (5508196i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5508200i32;
                    } else {
                        _gotoNext = 5510540i32;
                    };
                } else if (__value__ == (5508200i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5508221i32;
                    } else {
                        _gotoNext = 5508257i32;
                    };
                } else if (__value__ == (5508221i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5508257i32;
                } else if (__value__ == (5508257i32)) {
                    _c_5508257 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5508287i32;
                } else if (__value__ == (5508287i32)) {
                    if (_c_5508257 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5508299i32;
                    } else if (_c_5508257 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5508341i32;
                    } else if (((((((((_c_5508257 == ((11 : stdgo.GoUInt8)) || _c_5508257 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5508257 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5508257 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5508257 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5508257 : Bool) && (_c_5508257 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5508257 : Bool) && (_c_5508257 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5508257 : Bool) && (_c_5508257 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5508257 : Bool) && (_c_5508257 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5508664i32;
                    } else {
                        _gotoNext = 5509143i32;
                    };
                } else if (__value__ == (5508299i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5508196i32;
                } else if (__value__ == (5508341i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5508396i32;
                    } else {
                        _gotoNext = 5508435i32;
                    };
                } else if (__value__ == (5508396i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5508435i32;
                } else if (__value__ == (5508435i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5508543i32;
                    } else {
                        _gotoNext = 5508625i32;
                    };
                } else if (__value__ == (5508543i32)) {
                    _localPartBytes_5507628 = (_localPartBytes_5507628.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5508196i32;
                } else if (__value__ == (5508625i32)) {
                    _gotoNext = 5508625i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5508196i32;
                } else if (__value__ == (5508664i32)) {
                    _localPartBytes_5507628 = (_localPartBytes_5507628.__append__(_c_5508257));
                    _gotoNext = 5508196i32;
                } else if (__value__ == (5509143i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5508196i32;
                } else if (__value__ == (5509195i32)) {
                    _gotoNext = 5509195i32;
                    _gotoNext = 5509220i32;
                } else if (__value__ == (5509220i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5509232i32;
                } else if (__value__ == (5509232i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5509248i32;
                    } else {
                        _gotoNext = 5510105i32;
                    };
                } else if (__value__ == (5509248i32)) {
                    _c_5509294 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5509309i32;
                } else if (__value__ == (5509309i32)) {
                    if (_c_5509294 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5509321i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5509294 : Bool) && (_c_5509294 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5509294 : Bool) && (_c_5509294 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5509294 : Bool) && (_c_5509294 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5509294 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5509294 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5509294 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5509644i32;
                    } else {
                        _gotoNext = 5510065i32;
                    };
                } else if (__value__ == (5509321i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5509589i32;
                    } else {
                        _gotoNext = 5509628i32;
                    };
                } else if (__value__ == (5509589i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5509628i32;
                } else if (__value__ == (5509628i32)) {
                    _gotoNext = 5509644i32;
                } else if (__value__ == (5509644i32)) {
                    _localPartBytes_5507628 = (_localPartBytes_5507628.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5509232i32;
                } else if (__value__ == (5510065i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5509232i32;
                } else if (__value__ == (5510105i32)) {
                    if ((_localPartBytes_5507628.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5510133i32;
                    } else {
                        _gotoNext = 5510349i32;
                    };
                } else if (__value__ == (5510133i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5510349i32;
                } else if (__value__ == (5510349i32)) {
                    _twoDots_5510349 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5507628[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5507628[((_localPartBytes_5507628.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5507628, _twoDots_5510349) : Bool)) {
                        _gotoNext = 5510504i32;
                    } else {
                        _gotoNext = 5510540i32;
                    };
                } else if (__value__ == (5510504i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5510540i32;
                } else if (__value__ == (5510540i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5510572i32;
                    } else {
                        _gotoNext = 5510602i32;
                    };
                } else if (__value__ == (5510572i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5510602i32;
                } else if (__value__ == (5510602i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5510776 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5510776) {
                            _gotoNext = 5510813i32;
                        } else {
                            _gotoNext = 5510844i32;
                        };
                    };
                } else if (__value__ == (5510813i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5510844i32;
                } else if (__value__ == (5510844i32)) {
                    _mailbox._local = (_localPartBytes_5507628 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
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
