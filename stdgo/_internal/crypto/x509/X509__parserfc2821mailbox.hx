package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _localPartBytes_5514739:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5517887:Bool = false;
        var _twoDots_5517460:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5516405:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5515368:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5514708i32;
                    } else {
                        _gotoNext = 5514739i32;
                    };
                } else if (__value__ == (5514708i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5514739i32;
                } else if (__value__ == (5514739i32)) {
                    _localPartBytes_5514739 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5514802i32;
                    } else {
                        _gotoNext = 5516306i32;
                    };
                } else if (__value__ == (5514802i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5515291i32;
                } else if (__value__ == (5515291i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5515307i32;
                } else if (__value__ == (5515307i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5515311i32;
                    } else {
                        _gotoNext = 5517651i32;
                    };
                } else if (__value__ == (5515311i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5515332i32;
                    } else {
                        _gotoNext = 5515368i32;
                    };
                } else if (__value__ == (5515332i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5515368i32;
                } else if (__value__ == (5515368i32)) {
                    _c_5515368 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5515398i32;
                } else if (__value__ == (5515398i32)) {
                    if (_c_5515368 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5515410i32;
                    } else if (_c_5515368 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5515452i32;
                    } else if (((((((((_c_5515368 == ((11 : stdgo.GoUInt8)) || _c_5515368 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5515368 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5515368 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5515368 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5515368 : Bool) && (_c_5515368 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5515368 : Bool) && (_c_5515368 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5515368 : Bool) && (_c_5515368 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5515368 : Bool) && (_c_5515368 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5515775i32;
                    } else {
                        _gotoNext = 5516254i32;
                    };
                } else if (__value__ == (5515410i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5515307i32;
                } else if (__value__ == (5515452i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5515507i32;
                    } else {
                        _gotoNext = 5515546i32;
                    };
                } else if (__value__ == (5515507i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5515546i32;
                } else if (__value__ == (5515546i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5515654i32;
                    } else {
                        _gotoNext = 5515736i32;
                    };
                } else if (__value__ == (5515654i32)) {
                    _localPartBytes_5514739 = (_localPartBytes_5514739.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5515307i32;
                } else if (__value__ == (5515736i32)) {
                    _gotoNext = 5515736i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5515307i32;
                } else if (__value__ == (5515775i32)) {
                    _localPartBytes_5514739 = (_localPartBytes_5514739.__append__(_c_5515368));
                    _gotoNext = 5515307i32;
                } else if (__value__ == (5516254i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5515307i32;
                } else if (__value__ == (5516306i32)) {
                    _gotoNext = 5516306i32;
                    _gotoNext = 5516331i32;
                } else if (__value__ == (5516331i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5516343i32;
                } else if (__value__ == (5516343i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5516359i32;
                    } else {
                        _gotoNext = 5517216i32;
                    };
                } else if (__value__ == (5516359i32)) {
                    _c_5516405 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5516420i32;
                } else if (__value__ == (5516420i32)) {
                    if (_c_5516405 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5516432i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5516405 : Bool) && (_c_5516405 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5516405 : Bool) && (_c_5516405 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5516405 : Bool) && (_c_5516405 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5516405 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5516405 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5516405 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5516755i32;
                    } else {
                        _gotoNext = 5517176i32;
                    };
                } else if (__value__ == (5516432i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5516700i32;
                    } else {
                        _gotoNext = 5516739i32;
                    };
                } else if (__value__ == (5516700i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5516739i32;
                } else if (__value__ == (5516739i32)) {
                    _gotoNext = 5516755i32;
                } else if (__value__ == (5516755i32)) {
                    _localPartBytes_5514739 = (_localPartBytes_5514739.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5516343i32;
                } else if (__value__ == (5517176i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5516343i32;
                } else if (__value__ == (5517216i32)) {
                    if ((_localPartBytes_5514739.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5517244i32;
                    } else {
                        _gotoNext = 5517460i32;
                    };
                } else if (__value__ == (5517244i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5517460i32;
                } else if (__value__ == (5517460i32)) {
                    _twoDots_5517460 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5514739[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5514739[((_localPartBytes_5514739.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5514739, _twoDots_5517460) : Bool)) {
                        _gotoNext = 5517615i32;
                    } else {
                        _gotoNext = 5517651i32;
                    };
                } else if (__value__ == (5517615i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5517651i32;
                } else if (__value__ == (5517651i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5517683i32;
                    } else {
                        _gotoNext = 5517713i32;
                    };
                } else if (__value__ == (5517683i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5517713i32;
                } else if (__value__ == (5517713i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5517887 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5517887) {
                            _gotoNext = 5517924i32;
                        } else {
                            _gotoNext = 5517955i32;
                        };
                    };
                } else if (__value__ == (5517924i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5517955i32;
                } else if (__value__ == (5517955i32)) {
                    _mailbox._local = (_localPartBytes_5514739 : stdgo.GoString)?.__copy__();
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
