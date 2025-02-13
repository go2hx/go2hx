package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5557629:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5557000:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5560148:Bool = false;
        var _twoDots_5559721:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5558666:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5556969i32;
                    } else {
                        _gotoNext = 5557000i32;
                    };
                } else if (__value__ == (5556969i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5557000i32;
                } else if (__value__ == (5557000i32)) {
                    _localPartBytes_5557000 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5557063i32;
                    } else {
                        _gotoNext = 5558567i32;
                    };
                } else if (__value__ == (5557063i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5557552i32;
                } else if (__value__ == (5557552i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5557568i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5557572i32;
                    } else {
                        _gotoNext = 5559912i32;
                    };
                } else if (__value__ == (5557572i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5557593i32;
                    } else {
                        _gotoNext = 5557629i32;
                    };
                } else if (__value__ == (5557593i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5557629i32;
                } else if (__value__ == (5557629i32)) {
                    _c_5557629 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5557659i32;
                } else if (__value__ == (5557659i32)) {
                    if (_c_5557629 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5557671i32;
                    } else if (_c_5557629 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5557713i32;
                    } else if (((((((((_c_5557629 == ((11 : stdgo.GoUInt8)) || _c_5557629 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5557629 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5557629 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5557629 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5557629 : Bool) && (_c_5557629 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5557629 : Bool) && (_c_5557629 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5557629 : Bool) && (_c_5557629 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5557629 : Bool) && (_c_5557629 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5558036i32;
                    } else {
                        _gotoNext = 5558515i32;
                    };
                } else if (__value__ == (5557671i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5557713i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5557768i32;
                    } else {
                        _gotoNext = 5557807i32;
                    };
                } else if (__value__ == (5557768i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5557807i32;
                } else if (__value__ == (5557807i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5557915i32;
                    } else {
                        _gotoNext = 5557997i32;
                    };
                } else if (__value__ == (5557915i32)) {
                    _localPartBytes_5557000 = (_localPartBytes_5557000.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5557997i32)) {
                    _gotoNext = 5557997i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5558036i32)) {
                    _localPartBytes_5557000 = (_localPartBytes_5557000.__append__(_c_5557629));
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5558515i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5558567i32)) {
                    _gotoNext = 5558567i32;
                    _gotoNext = 5558592i32;
                } else if (__value__ == (5558592i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5558604i32;
                } else if (__value__ == (5558604i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5558620i32;
                    } else {
                        _gotoNext = 5559477i32;
                    };
                } else if (__value__ == (5558620i32)) {
                    _c_5558666 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5558681i32;
                } else if (__value__ == (5558681i32)) {
                    if (_c_5558666 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5558693i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5558666 : Bool) && (_c_5558666 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5558666 : Bool) && (_c_5558666 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5558666 : Bool) && (_c_5558666 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5558666 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5558666 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5558666 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5559016i32;
                    } else {
                        _gotoNext = 5559437i32;
                    };
                } else if (__value__ == (5558693i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5558961i32;
                    } else {
                        _gotoNext = 5559000i32;
                    };
                } else if (__value__ == (5558961i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559000i32;
                } else if (__value__ == (5559000i32)) {
                    _gotoNext = 5559016i32;
                } else if (__value__ == (5559016i32)) {
                    _localPartBytes_5557000 = (_localPartBytes_5557000.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5558604i32;
                } else if (__value__ == (5559437i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5558604i32;
                } else if (__value__ == (5559477i32)) {
                    if ((_localPartBytes_5557000.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5559505i32;
                    } else {
                        _gotoNext = 5559721i32;
                    };
                } else if (__value__ == (5559505i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559721i32;
                } else if (__value__ == (5559721i32)) {
                    _twoDots_5559721 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5557000[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5557000[((_localPartBytes_5557000.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5557000, _twoDots_5559721) : Bool)) {
                        _gotoNext = 5559876i32;
                    } else {
                        _gotoNext = 5559912i32;
                    };
                } else if (__value__ == (5559876i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559912i32;
                } else if (__value__ == (5559912i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5559944i32;
                    } else {
                        _gotoNext = 5559974i32;
                    };
                } else if (__value__ == (5559944i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559974i32;
                } else if (__value__ == (5559974i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5560148 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5560148) {
                            _gotoNext = 5560185i32;
                        } else {
                            _gotoNext = 5560216i32;
                        };
                    };
                } else if (__value__ == (5560185i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5560216i32;
                } else if (__value__ == (5560216i32)) {
                    _mailbox._local = (_localPartBytes_5557000 : stdgo.GoString)?.__copy__();
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
