package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5593329:Bool = false;
        var _twoDots_5592902:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5591847:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5590810:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5590181:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5590150i32;
                    } else {
                        _gotoNext = 5590181i32;
                    };
                } else if (__value__ == (5590150i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5590181i32;
                } else if (__value__ == (5590181i32)) {
                    _localPartBytes_5590181 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5590244i32;
                    } else {
                        _gotoNext = 5591748i32;
                    };
                } else if (__value__ == (5590244i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5590733i32;
                } else if (__value__ == (5590733i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5590749i32;
                } else if (__value__ == (5590749i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5590753i32;
                    } else {
                        _gotoNext = 5593093i32;
                    };
                } else if (__value__ == (5590753i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5590774i32;
                    } else {
                        _gotoNext = 5590810i32;
                    };
                } else if (__value__ == (5590774i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5590810i32;
                } else if (__value__ == (5590810i32)) {
                    _c_5590810 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5590840i32;
                } else if (__value__ == (5590840i32)) {
                    if (_c_5590810 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5590852i32;
                    } else if (_c_5590810 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5590894i32;
                    } else if (((((((((_c_5590810 == ((11 : stdgo.GoUInt8)) || _c_5590810 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5590810 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5590810 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5590810 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5590810 : Bool) && (_c_5590810 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5590810 : Bool) && (_c_5590810 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5590810 : Bool) && (_c_5590810 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5590810 : Bool) && (_c_5590810 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5591217i32;
                    } else {
                        _gotoNext = 5591696i32;
                    };
                } else if (__value__ == (5590852i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5590749i32;
                } else if (__value__ == (5590894i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5590949i32;
                    } else {
                        _gotoNext = 5590988i32;
                    };
                } else if (__value__ == (5590949i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5590988i32;
                } else if (__value__ == (5590988i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5591096i32;
                    } else {
                        _gotoNext = 5591178i32;
                    };
                } else if (__value__ == (5591096i32)) {
                    _localPartBytes_5590181 = (_localPartBytes_5590181.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5590749i32;
                } else if (__value__ == (5591178i32)) {
                    _gotoNext = 5591178i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5590749i32;
                } else if (__value__ == (5591217i32)) {
                    _localPartBytes_5590181 = (_localPartBytes_5590181.__append__(_c_5590810));
                    _gotoNext = 5590749i32;
                } else if (__value__ == (5591696i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5590749i32;
                } else if (__value__ == (5591748i32)) {
                    _gotoNext = 5591748i32;
                    _gotoNext = 5591773i32;
                } else if (__value__ == (5591773i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5591785i32;
                } else if (__value__ == (5591785i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5591801i32;
                    } else {
                        _gotoNext = 5592658i32;
                    };
                } else if (__value__ == (5591801i32)) {
                    _c_5591847 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5591862i32;
                } else if (__value__ == (5591862i32)) {
                    if (_c_5591847 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5591874i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5591847 : Bool) && (_c_5591847 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5591847 : Bool) && (_c_5591847 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5591847 : Bool) && (_c_5591847 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5591847 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5591847 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5591847 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5592197i32;
                    } else {
                        _gotoNext = 5592618i32;
                    };
                } else if (__value__ == (5591874i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5592142i32;
                    } else {
                        _gotoNext = 5592181i32;
                    };
                } else if (__value__ == (5592142i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5592181i32;
                } else if (__value__ == (5592181i32)) {
                    _gotoNext = 5592197i32;
                } else if (__value__ == (5592197i32)) {
                    _localPartBytes_5590181 = (_localPartBytes_5590181.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5591785i32;
                } else if (__value__ == (5592618i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5591785i32;
                } else if (__value__ == (5592658i32)) {
                    if ((_localPartBytes_5590181.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5592686i32;
                    } else {
                        _gotoNext = 5592902i32;
                    };
                } else if (__value__ == (5592686i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5592902i32;
                } else if (__value__ == (5592902i32)) {
                    _twoDots_5592902 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5590181[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5590181[((_localPartBytes_5590181.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5590181, _twoDots_5592902) : Bool)) {
                        _gotoNext = 5593057i32;
                    } else {
                        _gotoNext = 5593093i32;
                    };
                } else if (__value__ == (5593057i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5593093i32;
                } else if (__value__ == (5593093i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5593125i32;
                    } else {
                        _gotoNext = 5593155i32;
                    };
                } else if (__value__ == (5593125i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5593155i32;
                } else if (__value__ == (5593155i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5593329 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5593329) {
                            _gotoNext = 5593366i32;
                        } else {
                            _gotoNext = 5593397i32;
                        };
                    };
                } else if (__value__ == (5593366i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5593397i32;
                } else if (__value__ == (5593397i32)) {
                    _mailbox._local = (_localPartBytes_5590181 : stdgo.GoString)?.__copy__();
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
