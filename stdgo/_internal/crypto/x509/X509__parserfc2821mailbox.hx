package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _localPartBytes_5608236:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5611384:Bool = false;
        var _twoDots_5610957:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5609902:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5608865:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608205i32;
                    } else {
                        _gotoNext = 5608236i32;
                    };
                } else if (__value__ == (5608205i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608236i32;
                } else if (__value__ == (5608236i32)) {
                    _localPartBytes_5608236 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608299i32;
                    } else {
                        _gotoNext = 5609803i32;
                    };
                } else if (__value__ == (5608299i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608788i32;
                } else if (__value__ == (5608788i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5608804i32;
                } else if (__value__ == (5608804i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5608808i32;
                    } else {
                        _gotoNext = 5611148i32;
                    };
                } else if (__value__ == (5608808i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608829i32;
                    } else {
                        _gotoNext = 5608865i32;
                    };
                } else if (__value__ == (5608829i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608865i32;
                } else if (__value__ == (5608865i32)) {
                    _c_5608865 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608895i32;
                } else if (__value__ == (5608895i32)) {
                    if (_c_5608865 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608907i32;
                    } else if (_c_5608865 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5608949i32;
                    } else if (((((((((_c_5608865 == ((11 : stdgo.GoUInt8)) || _c_5608865 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5608865 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5608865 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5608865 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5608865 : Bool) && (_c_5608865 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5608865 : Bool) && (_c_5608865 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5608865 : Bool) && (_c_5608865 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5608865 : Bool) && (_c_5608865 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5609272i32;
                    } else {
                        _gotoNext = 5609751i32;
                    };
                } else if (__value__ == (5608907i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5608804i32;
                } else if (__value__ == (5608949i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5609004i32;
                    } else {
                        _gotoNext = 5609043i32;
                    };
                } else if (__value__ == (5609004i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5609043i32;
                } else if (__value__ == (5609043i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5609151i32;
                    } else {
                        _gotoNext = 5609233i32;
                    };
                } else if (__value__ == (5609151i32)) {
                    _localPartBytes_5608236 = (_localPartBytes_5608236.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608804i32;
                } else if (__value__ == (5609233i32)) {
                    _gotoNext = 5609233i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5608804i32;
                } else if (__value__ == (5609272i32)) {
                    _localPartBytes_5608236 = (_localPartBytes_5608236.__append__(_c_5608865));
                    _gotoNext = 5608804i32;
                } else if (__value__ == (5609751i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608804i32;
                } else if (__value__ == (5609803i32)) {
                    _gotoNext = 5609803i32;
                    _gotoNext = 5609828i32;
                } else if (__value__ == (5609828i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5609840i32;
                } else if (__value__ == (5609840i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5609856i32;
                    } else {
                        _gotoNext = 5610713i32;
                    };
                } else if (__value__ == (5609856i32)) {
                    _c_5609902 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5609917i32;
                } else if (__value__ == (5609917i32)) {
                    if (_c_5609902 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5609929i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5609902 : Bool) && (_c_5609902 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5609902 : Bool) && (_c_5609902 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5609902 : Bool) && (_c_5609902 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5609902 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5609902 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5609902 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5610252i32;
                    } else {
                        _gotoNext = 5610673i32;
                    };
                } else if (__value__ == (5609929i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5610197i32;
                    } else {
                        _gotoNext = 5610236i32;
                    };
                } else if (__value__ == (5610197i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5610236i32;
                } else if (__value__ == (5610236i32)) {
                    _gotoNext = 5610252i32;
                } else if (__value__ == (5610252i32)) {
                    _localPartBytes_5608236 = (_localPartBytes_5608236.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5609840i32;
                } else if (__value__ == (5610673i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5609840i32;
                } else if (__value__ == (5610713i32)) {
                    if ((_localPartBytes_5608236.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5610741i32;
                    } else {
                        _gotoNext = 5610957i32;
                    };
                } else if (__value__ == (5610741i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5610957i32;
                } else if (__value__ == (5610957i32)) {
                    _twoDots_5610957 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5608236[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5608236[((_localPartBytes_5608236.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5608236, _twoDots_5610957) : Bool)) {
                        _gotoNext = 5611112i32;
                    } else {
                        _gotoNext = 5611148i32;
                    };
                } else if (__value__ == (5611112i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5611148i32;
                } else if (__value__ == (5611148i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5611180i32;
                    } else {
                        _gotoNext = 5611210i32;
                    };
                } else if (__value__ == (5611180i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5611210i32;
                } else if (__value__ == (5611210i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5611384 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5611384) {
                            _gotoNext = 5611421i32;
                        } else {
                            _gotoNext = 5611452i32;
                        };
                    };
                } else if (__value__ == (5611421i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5611452i32;
                } else if (__value__ == (5611452i32)) {
                    _mailbox._local = (_localPartBytes_5608236 : stdgo.GoString)?.__copy__();
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
