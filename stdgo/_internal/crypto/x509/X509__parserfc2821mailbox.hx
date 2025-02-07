package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _localPartBytes_5462314:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5465462:Bool = false;
        var _twoDots_5465035:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5463980:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5462943:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5462283i32;
                    } else {
                        _gotoNext = 5462314i32;
                    };
                } else if (__value__ == (5462283i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5462314i32;
                } else if (__value__ == (5462314i32)) {
                    _localPartBytes_5462314 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5462377i32;
                    } else {
                        _gotoNext = 5463881i32;
                    };
                } else if (__value__ == (5462377i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5462866i32;
                } else if (__value__ == (5462866i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5462882i32;
                } else if (__value__ == (5462882i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5462886i32;
                    } else {
                        _gotoNext = 5465226i32;
                    };
                } else if (__value__ == (5462886i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5462907i32;
                    } else {
                        _gotoNext = 5462943i32;
                    };
                } else if (__value__ == (5462907i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5462943i32;
                } else if (__value__ == (5462943i32)) {
                    _c_5462943 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5462973i32;
                } else if (__value__ == (5462973i32)) {
                    if (_c_5462943 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5462985i32;
                    } else if (_c_5462943 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5463027i32;
                    } else if (((((((((_c_5462943 == ((11 : stdgo.GoUInt8)) || _c_5462943 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5462943 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5462943 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5462943 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5462943 : Bool) && (_c_5462943 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5462943 : Bool) && (_c_5462943 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5462943 : Bool) && (_c_5462943 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5462943 : Bool) && (_c_5462943 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5463350i32;
                    } else {
                        _gotoNext = 5463829i32;
                    };
                } else if (__value__ == (5462985i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5462882i32;
                } else if (__value__ == (5463027i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5463082i32;
                    } else {
                        _gotoNext = 5463121i32;
                    };
                } else if (__value__ == (5463082i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5463121i32;
                } else if (__value__ == (5463121i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5463229i32;
                    } else {
                        _gotoNext = 5463311i32;
                    };
                } else if (__value__ == (5463229i32)) {
                    _localPartBytes_5462314 = (_localPartBytes_5462314.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5462882i32;
                } else if (__value__ == (5463311i32)) {
                    _gotoNext = 5463311i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5462882i32;
                } else if (__value__ == (5463350i32)) {
                    _localPartBytes_5462314 = (_localPartBytes_5462314.__append__(_c_5462943));
                    _gotoNext = 5462882i32;
                } else if (__value__ == (5463829i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5462882i32;
                } else if (__value__ == (5463881i32)) {
                    _gotoNext = 5463881i32;
                    _gotoNext = 5463906i32;
                } else if (__value__ == (5463906i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5463918i32;
                } else if (__value__ == (5463918i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5463934i32;
                    } else {
                        _gotoNext = 5464791i32;
                    };
                } else if (__value__ == (5463934i32)) {
                    _c_5463980 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5463995i32;
                } else if (__value__ == (5463995i32)) {
                    if (_c_5463980 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5464007i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5463980 : Bool) && (_c_5463980 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5463980 : Bool) && (_c_5463980 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5463980 : Bool) && (_c_5463980 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5463980 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5463980 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5463980 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5464330i32;
                    } else {
                        _gotoNext = 5464751i32;
                    };
                } else if (__value__ == (5464007i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5464275i32;
                    } else {
                        _gotoNext = 5464314i32;
                    };
                } else if (__value__ == (5464275i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5464314i32;
                } else if (__value__ == (5464314i32)) {
                    _gotoNext = 5464330i32;
                } else if (__value__ == (5464330i32)) {
                    _localPartBytes_5462314 = (_localPartBytes_5462314.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5463918i32;
                } else if (__value__ == (5464751i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5463918i32;
                } else if (__value__ == (5464791i32)) {
                    if ((_localPartBytes_5462314.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5464819i32;
                    } else {
                        _gotoNext = 5465035i32;
                    };
                } else if (__value__ == (5464819i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5465035i32;
                } else if (__value__ == (5465035i32)) {
                    _twoDots_5465035 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5462314[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5462314[((_localPartBytes_5462314.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5462314, _twoDots_5465035) : Bool)) {
                        _gotoNext = 5465190i32;
                    } else {
                        _gotoNext = 5465226i32;
                    };
                } else if (__value__ == (5465190i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5465226i32;
                } else if (__value__ == (5465226i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5465258i32;
                    } else {
                        _gotoNext = 5465288i32;
                    };
                } else if (__value__ == (5465258i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5465288i32;
                } else if (__value__ == (5465288i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5465462 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5465462) {
                            _gotoNext = 5465499i32;
                        } else {
                            _gotoNext = 5465530i32;
                        };
                    };
                } else if (__value__ == (5465499i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5465530i32;
                } else if (__value__ == (5465530i32)) {
                    _mailbox._local = (_localPartBytes_5462314 : stdgo.GoString)?.__copy__();
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
