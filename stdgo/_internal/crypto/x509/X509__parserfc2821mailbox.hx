package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5560328:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5559291:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5558662:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5561810:Bool = false;
        var _twoDots_5561383:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5558631i32;
                    } else {
                        _gotoNext = 5558662i32;
                    };
                } else if (__value__ == (5558631i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558662i32;
                } else if (__value__ == (5558662i32)) {
                    _localPartBytes_5558662 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5558725i32;
                    } else {
                        _gotoNext = 5560229i32;
                    };
                } else if (__value__ == (5558725i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5559214i32;
                } else if (__value__ == (5559214i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5559230i32;
                } else if (__value__ == (5559230i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5559234i32;
                    } else {
                        _gotoNext = 5561574i32;
                    };
                } else if (__value__ == (5559234i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5559255i32;
                    } else {
                        _gotoNext = 5559291i32;
                    };
                } else if (__value__ == (5559255i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559291i32;
                } else if (__value__ == (5559291i32)) {
                    _c_5559291 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5559321i32;
                } else if (__value__ == (5559321i32)) {
                    if (_c_5559291 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5559333i32;
                    } else if (_c_5559291 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5559375i32;
                    } else if (((((((((_c_5559291 == ((11 : stdgo.GoUInt8)) || _c_5559291 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5559291 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5559291 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5559291 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5559291 : Bool) && (_c_5559291 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5559291 : Bool) && (_c_5559291 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5559291 : Bool) && (_c_5559291 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5559291 : Bool) && (_c_5559291 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5559698i32;
                    } else {
                        _gotoNext = 5560177i32;
                    };
                } else if (__value__ == (5559333i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5559230i32;
                } else if (__value__ == (5559375i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5559430i32;
                    } else {
                        _gotoNext = 5559469i32;
                    };
                } else if (__value__ == (5559430i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559469i32;
                } else if (__value__ == (5559469i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5559577i32;
                    } else {
                        _gotoNext = 5559659i32;
                    };
                } else if (__value__ == (5559577i32)) {
                    _localPartBytes_5558662 = (_localPartBytes_5558662.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5559230i32;
                } else if (__value__ == (5559659i32)) {
                    _gotoNext = 5559659i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5559230i32;
                } else if (__value__ == (5559698i32)) {
                    _localPartBytes_5558662 = (_localPartBytes_5558662.__append__(_c_5559291));
                    _gotoNext = 5559230i32;
                } else if (__value__ == (5560177i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559230i32;
                } else if (__value__ == (5560229i32)) {
                    _gotoNext = 5560229i32;
                    _gotoNext = 5560254i32;
                } else if (__value__ == (5560254i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5560266i32;
                } else if (__value__ == (5560266i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5560282i32;
                    } else {
                        _gotoNext = 5561139i32;
                    };
                } else if (__value__ == (5560282i32)) {
                    _c_5560328 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5560343i32;
                } else if (__value__ == (5560343i32)) {
                    if (_c_5560328 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5560355i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5560328 : Bool) && (_c_5560328 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5560328 : Bool) && (_c_5560328 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5560328 : Bool) && (_c_5560328 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5560328 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5560328 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5560328 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5560678i32;
                    } else {
                        _gotoNext = 5561099i32;
                    };
                } else if (__value__ == (5560355i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5560623i32;
                    } else {
                        _gotoNext = 5560662i32;
                    };
                } else if (__value__ == (5560623i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5560662i32;
                } else if (__value__ == (5560662i32)) {
                    _gotoNext = 5560678i32;
                } else if (__value__ == (5560678i32)) {
                    _localPartBytes_5558662 = (_localPartBytes_5558662.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5560266i32;
                } else if (__value__ == (5561099i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5560266i32;
                } else if (__value__ == (5561139i32)) {
                    if ((_localPartBytes_5558662.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5561167i32;
                    } else {
                        _gotoNext = 5561383i32;
                    };
                } else if (__value__ == (5561167i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5561383i32;
                } else if (__value__ == (5561383i32)) {
                    _twoDots_5561383 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5558662[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5558662[((_localPartBytes_5558662.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5558662, _twoDots_5561383) : Bool)) {
                        _gotoNext = 5561538i32;
                    } else {
                        _gotoNext = 5561574i32;
                    };
                } else if (__value__ == (5561538i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5561574i32;
                } else if (__value__ == (5561574i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5561606i32;
                    } else {
                        _gotoNext = 5561636i32;
                    };
                } else if (__value__ == (5561606i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5561636i32;
                } else if (__value__ == (5561636i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5561810 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5561810) {
                            _gotoNext = 5561847i32;
                        } else {
                            _gotoNext = 5561878i32;
                        };
                    };
                } else if (__value__ == (5561847i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5561878i32;
                } else if (__value__ == (5561878i32)) {
                    _mailbox._local = (_localPartBytes_5558662 : stdgo.GoString)?.__copy__();
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
