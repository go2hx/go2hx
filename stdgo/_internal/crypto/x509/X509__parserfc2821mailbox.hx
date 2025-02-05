package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var nextCharBreak = false;
        var _c_5514179:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5513550:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5516698:Bool = false;
        var _twoDots_5516271:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5515216:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5513519i32;
                    } else {
                        _gotoNext = 5513550i32;
                    };
                } else if (__value__ == (5513519i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5513550i32;
                } else if (__value__ == (5513550i32)) {
                    _localPartBytes_5513550 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5513613i32;
                    } else {
                        _gotoNext = 5515117i32;
                    };
                } else if (__value__ == (5513613i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5514102i32;
                } else if (__value__ == (5514102i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5514118i32;
                } else if (__value__ == (5514118i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5514122i32;
                    } else {
                        _gotoNext = 5516462i32;
                    };
                } else if (__value__ == (5514122i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5514143i32;
                    } else {
                        _gotoNext = 5514179i32;
                    };
                } else if (__value__ == (5514143i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5514179i32;
                } else if (__value__ == (5514179i32)) {
                    _c_5514179 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5514209i32;
                } else if (__value__ == (5514209i32)) {
                    if (_c_5514179 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5514221i32;
                    } else if (_c_5514179 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5514263i32;
                    } else if (((((((((_c_5514179 == ((11 : stdgo.GoUInt8)) || _c_5514179 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5514179 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5514179 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5514179 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5514179 : Bool) && (_c_5514179 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5514179 : Bool) && (_c_5514179 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5514179 : Bool) && (_c_5514179 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5514179 : Bool) && (_c_5514179 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5514586i32;
                    } else {
                        _gotoNext = 5515065i32;
                    };
                } else if (__value__ == (5514221i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5514118i32;
                } else if (__value__ == (5514263i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5514318i32;
                    } else {
                        _gotoNext = 5514357i32;
                    };
                } else if (__value__ == (5514318i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5514357i32;
                } else if (__value__ == (5514357i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5514465i32;
                    } else {
                        _gotoNext = 5514547i32;
                    };
                } else if (__value__ == (5514465i32)) {
                    _localPartBytes_5513550 = (_localPartBytes_5513550.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5514118i32;
                } else if (__value__ == (5514547i32)) {
                    _gotoNext = 5514547i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5514118i32;
                } else if (__value__ == (5514586i32)) {
                    _localPartBytes_5513550 = (_localPartBytes_5513550.__append__(_c_5514179));
                    _gotoNext = 5514118i32;
                } else if (__value__ == (5515065i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5514118i32;
                } else if (__value__ == (5515117i32)) {
                    _gotoNext = 5515117i32;
                    _gotoNext = 5515142i32;
                } else if (__value__ == (5515142i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5515154i32;
                } else if (__value__ == (5515154i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5515170i32;
                    } else {
                        _gotoNext = 5516027i32;
                    };
                } else if (__value__ == (5515170i32)) {
                    _c_5515216 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5515231i32;
                } else if (__value__ == (5515231i32)) {
                    if (_c_5515216 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5515243i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5515216 : Bool) && (_c_5515216 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5515216 : Bool) && (_c_5515216 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5515216 : Bool) && (_c_5515216 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5515216 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5515216 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5515216 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5515566i32;
                    } else {
                        _gotoNext = 5515987i32;
                    };
                } else if (__value__ == (5515243i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5515511i32;
                    } else {
                        _gotoNext = 5515550i32;
                    };
                } else if (__value__ == (5515511i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5515550i32;
                } else if (__value__ == (5515550i32)) {
                    _gotoNext = 5515566i32;
                } else if (__value__ == (5515566i32)) {
                    _localPartBytes_5513550 = (_localPartBytes_5513550.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5515154i32;
                } else if (__value__ == (5515987i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5515154i32;
                } else if (__value__ == (5516027i32)) {
                    if ((_localPartBytes_5513550.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5516055i32;
                    } else {
                        _gotoNext = 5516271i32;
                    };
                } else if (__value__ == (5516055i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5516271i32;
                } else if (__value__ == (5516271i32)) {
                    _twoDots_5516271 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5513550[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5513550[((_localPartBytes_5513550.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5513550, _twoDots_5516271) : Bool)) {
                        _gotoNext = 5516426i32;
                    } else {
                        _gotoNext = 5516462i32;
                    };
                } else if (__value__ == (5516426i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5516462i32;
                } else if (__value__ == (5516462i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5516494i32;
                    } else {
                        _gotoNext = 5516524i32;
                    };
                } else if (__value__ == (5516494i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5516524i32;
                } else if (__value__ == (5516524i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5516698 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5516698) {
                            _gotoNext = 5516735i32;
                        } else {
                            _gotoNext = 5516766i32;
                        };
                    };
                } else if (__value__ == (5516735i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5516766i32;
                } else if (__value__ == (5516766i32)) {
                    _mailbox._local = (_localPartBytes_5513550 : stdgo.GoString)?.__copy__();
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
