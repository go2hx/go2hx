package stdgo._internal.math.big;
function _scanExponent(_r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base2ok:Bool, _sepOk:Bool):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _exp = (0 : stdgo.GoInt64), _base = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = (null : stdgo.Error);
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (10 : stdgo.GoInt), _2 : _err };
                _exp = __tmp__._0;
                _base = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _ch;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))))) {
                        _base = (10 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((112 : stdgo.GoUInt8)) || __value__ == ((80 : stdgo.GoUInt8))))) {
                        if (_base2ok) {
                            _base = (2 : stdgo.GoInt);
                            break;
                        };
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        _r.unreadByte();
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (10 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                            _exp = __tmp__._0;
                            _base = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                        break;
                    };
                };
                break;
            };
        };
        var _digits:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _r.readByte();
            _ch = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_err == null) && (((_ch == (43 : stdgo.GoUInt8)) || (_ch == (45 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            if (_ch == ((45 : stdgo.GoUInt8))) {
                _digits = (_digits.__append__((45 : stdgo.GoUInt8)));
            };
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        var _prev = (46 : stdgo.GoInt32);
        var _invalSep = (false : Bool);
        var _hasDigits = (false : Bool);
        while (_err == null) {
            if ((((48 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _digits = (_digits.__append__(_ch));
                _prev = (48 : stdgo.GoInt32);
                _hasDigits = true;
            } else if (((_ch == (95 : stdgo.GoUInt8)) && _sepOk : Bool)) {
                if (_prev != ((48 : stdgo.GoInt32))) {
                    _invalSep = true;
                };
                _prev = (95 : stdgo.GoInt32);
            } else {
                _r.unreadByte();
                break;
            };
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = (null : stdgo.Error);
        };
        if (((_err == null) && !_hasDigits : Bool)) {
            _err = stdgo._internal.math.big.Big__errnodigits._errNoDigits;
        };
        if (_err == null) {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt((_digits : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _exp = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (((_err == null) && ((_invalSep || (_prev == (95 : stdgo.GoInt32)) : Bool)) : Bool)) {
            _err = stdgo._internal.math.big.Big__errinvalsep._errInvalSep;
        };
        return { _0 : _exp, _1 : _base, _2 : _err };
    }
