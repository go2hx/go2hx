package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var nextCharBreak = false;
        var _c_5556181:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5555552:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5558700:Bool = false;
        var _twoDots_5558273:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5557218:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5555521i32;
                    } else {
                        _gotoNext = 5555552i32;
                    };
                } else if (__value__ == (5555521i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5555552i32;
                } else if (__value__ == (5555552i32)) {
                    _localPartBytes_5555552 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5555615i32;
                    } else {
                        _gotoNext = 5557119i32;
                    };
                } else if (__value__ == (5555615i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5556104i32;
                } else if (__value__ == (5556104i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5556120i32;
                } else if (__value__ == (5556120i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5556124i32;
                    } else {
                        _gotoNext = 5558464i32;
                    };
                } else if (__value__ == (5556124i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5556145i32;
                    } else {
                        _gotoNext = 5556181i32;
                    };
                } else if (__value__ == (5556145i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556181i32;
                } else if (__value__ == (5556181i32)) {
                    _c_5556181 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5556211i32;
                } else if (__value__ == (5556211i32)) {
                    if (_c_5556181 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5556223i32;
                    } else if (_c_5556181 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5556265i32;
                    } else if (((((((((_c_5556181 == ((11 : stdgo.GoUInt8)) || _c_5556181 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5556181 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5556181 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5556181 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5556181 : Bool) && (_c_5556181 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5556181 : Bool) && (_c_5556181 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5556181 : Bool) && (_c_5556181 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5556181 : Bool) && (_c_5556181 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5556588i32;
                    } else {
                        _gotoNext = 5557067i32;
                    };
                } else if (__value__ == (5556223i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5556120i32;
                } else if (__value__ == (5556265i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5556320i32;
                    } else {
                        _gotoNext = 5556359i32;
                    };
                } else if (__value__ == (5556320i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556359i32;
                } else if (__value__ == (5556359i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5556467i32;
                    } else {
                        _gotoNext = 5556549i32;
                    };
                } else if (__value__ == (5556467i32)) {
                    _localPartBytes_5555552 = (_localPartBytes_5555552.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5556120i32;
                } else if (__value__ == (5556549i32)) {
                    _gotoNext = 5556549i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5556120i32;
                } else if (__value__ == (5556588i32)) {
                    _localPartBytes_5555552 = (_localPartBytes_5555552.__append__(_c_5556181));
                    _gotoNext = 5556120i32;
                } else if (__value__ == (5557067i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556120i32;
                } else if (__value__ == (5557119i32)) {
                    _gotoNext = 5557119i32;
                    _gotoNext = 5557144i32;
                } else if (__value__ == (5557144i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5557156i32;
                } else if (__value__ == (5557156i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5557172i32;
                    } else {
                        _gotoNext = 5558029i32;
                    };
                } else if (__value__ == (5557172i32)) {
                    _c_5557218 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5557233i32;
                } else if (__value__ == (5557233i32)) {
                    if (_c_5557218 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5557245i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5557218 : Bool) && (_c_5557218 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5557218 : Bool) && (_c_5557218 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5557218 : Bool) && (_c_5557218 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5557218 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5557218 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5557218 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5557568i32;
                    } else {
                        _gotoNext = 5557989i32;
                    };
                } else if (__value__ == (5557245i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5557513i32;
                    } else {
                        _gotoNext = 5557552i32;
                    };
                } else if (__value__ == (5557513i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5557552i32;
                } else if (__value__ == (5557552i32)) {
                    _gotoNext = 5557568i32;
                } else if (__value__ == (5557568i32)) {
                    _localPartBytes_5555552 = (_localPartBytes_5555552.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5557156i32;
                } else if (__value__ == (5557989i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5557156i32;
                } else if (__value__ == (5558029i32)) {
                    if ((_localPartBytes_5555552.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5558057i32;
                    } else {
                        _gotoNext = 5558273i32;
                    };
                } else if (__value__ == (5558057i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558273i32;
                } else if (__value__ == (5558273i32)) {
                    _twoDots_5558273 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5555552[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5555552[((_localPartBytes_5555552.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5555552, _twoDots_5558273) : Bool)) {
                        _gotoNext = 5558428i32;
                    } else {
                        _gotoNext = 5558464i32;
                    };
                } else if (__value__ == (5558428i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558464i32;
                } else if (__value__ == (5558464i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5558496i32;
                    } else {
                        _gotoNext = 5558526i32;
                    };
                } else if (__value__ == (5558496i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558526i32;
                } else if (__value__ == (5558526i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5558700 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5558700) {
                            _gotoNext = 5558737i32;
                        } else {
                            _gotoNext = 5558768i32;
                        };
                    };
                } else if (__value__ == (5558737i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558768i32;
                } else if (__value__ == (5558768i32)) {
                    _mailbox._local = (_localPartBytes_5555552 : stdgo.GoString)?.__copy__();
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
