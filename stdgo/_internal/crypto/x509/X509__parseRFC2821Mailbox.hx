package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5520699:Bool = false;
        var _twoDots_5520272:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5519217:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5518180:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5517551:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5517520i32;
                    } else {
                        _gotoNext = 5517551i32;
                    };
                } else if (__value__ == (5517520i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5517551i32;
                } else if (__value__ == (5517551i32)) {
                    _localPartBytes_5517551 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5517614i32;
                    } else {
                        _gotoNext = 5519118i32;
                    };
                } else if (__value__ == (5517614i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5518103i32;
                } else if (__value__ == (5518103i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5518119i32;
                } else if (__value__ == (5518119i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5518123i32;
                    } else {
                        _gotoNext = 5520463i32;
                    };
                } else if (__value__ == (5518123i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5518144i32;
                    } else {
                        _gotoNext = 5518180i32;
                    };
                } else if (__value__ == (5518144i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5518180i32;
                } else if (__value__ == (5518180i32)) {
                    _c_5518180 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5518210i32;
                } else if (__value__ == (5518210i32)) {
                    if (_c_5518180 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5518222i32;
                    } else if (_c_5518180 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5518264i32;
                    } else if (((((((((_c_5518180 == ((11 : stdgo.GoUInt8)) || _c_5518180 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5518180 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5518180 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5518180 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5518180 : Bool) && (_c_5518180 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5518180 : Bool) && (_c_5518180 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5518180 : Bool) && (_c_5518180 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5518180 : Bool) && (_c_5518180 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5518587i32;
                    } else {
                        _gotoNext = 5519066i32;
                    };
                } else if (__value__ == (5518222i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5518119i32;
                } else if (__value__ == (5518264i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5518319i32;
                    } else {
                        _gotoNext = 5518358i32;
                    };
                } else if (__value__ == (5518319i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5518358i32;
                } else if (__value__ == (5518358i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5518466i32;
                    } else {
                        _gotoNext = 5518548i32;
                    };
                } else if (__value__ == (5518466i32)) {
                    _localPartBytes_5517551 = (_localPartBytes_5517551.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5518119i32;
                } else if (__value__ == (5518548i32)) {
                    _gotoNext = 5518548i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5518119i32;
                } else if (__value__ == (5518587i32)) {
                    _localPartBytes_5517551 = (_localPartBytes_5517551.__append__(_c_5518180));
                    _gotoNext = 5518119i32;
                } else if (__value__ == (5519066i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5518119i32;
                } else if (__value__ == (5519118i32)) {
                    _gotoNext = 5519118i32;
                    _gotoNext = 5519143i32;
                } else if (__value__ == (5519143i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5519155i32;
                } else if (__value__ == (5519155i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5519171i32;
                    } else {
                        _gotoNext = 5520028i32;
                    };
                } else if (__value__ == (5519171i32)) {
                    _c_5519217 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5519232i32;
                } else if (__value__ == (5519232i32)) {
                    if (_c_5519217 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5519244i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5519217 : Bool) && (_c_5519217 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5519217 : Bool) && (_c_5519217 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5519217 : Bool) && (_c_5519217 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5519217 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5519217 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5519217 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5519567i32;
                    } else {
                        _gotoNext = 5519988i32;
                    };
                } else if (__value__ == (5519244i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5519512i32;
                    } else {
                        _gotoNext = 5519551i32;
                    };
                } else if (__value__ == (5519512i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5519551i32;
                } else if (__value__ == (5519551i32)) {
                    _gotoNext = 5519567i32;
                } else if (__value__ == (5519567i32)) {
                    _localPartBytes_5517551 = (_localPartBytes_5517551.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5519155i32;
                } else if (__value__ == (5519988i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5519155i32;
                } else if (__value__ == (5520028i32)) {
                    if ((_localPartBytes_5517551.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5520056i32;
                    } else {
                        _gotoNext = 5520272i32;
                    };
                } else if (__value__ == (5520056i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520272i32;
                } else if (__value__ == (5520272i32)) {
                    _twoDots_5520272 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5517551[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5517551[((_localPartBytes_5517551.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5517551, _twoDots_5520272) : Bool)) {
                        _gotoNext = 5520427i32;
                    } else {
                        _gotoNext = 5520463i32;
                    };
                } else if (__value__ == (5520427i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520463i32;
                } else if (__value__ == (5520463i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5520495i32;
                    } else {
                        _gotoNext = 5520525i32;
                    };
                } else if (__value__ == (5520495i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520525i32;
                } else if (__value__ == (5520525i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5520699 = __tmp__._1;
                        };
                        if (!_ok_5520699) {
                            _gotoNext = 5520736i32;
                        } else {
                            _gotoNext = 5520767i32;
                        };
                    };
                } else if (__value__ == (5520736i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520767i32;
                } else if (__value__ == (5520767i32)) {
                    _mailbox._local = (_localPartBytes_5517551 : stdgo.GoString)?.__copy__();
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
