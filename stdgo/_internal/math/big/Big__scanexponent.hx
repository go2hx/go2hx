package stdgo._internal.math.big;
function _scanExponent(_r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base2ok:Bool, _sepOk:Bool):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _exp = (0 : stdgo.GoInt64), _base = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L226"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L227"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = (null : stdgo.Error);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L230"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (10 : stdgo.GoInt), _2 : _err };
                _exp = __tmp__._0;
                _base = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L234"
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
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L238"
                        if (_base2ok) {
                            _base = (2 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L240"
                            break;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L242"
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L244"
                        _r.unreadByte();
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L245"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (10 : stdgo.GoInt), _2 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L251"
        if (((_err == null) && (((_ch == (43 : stdgo.GoUInt8)) || (_ch == (45 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L252"
            if (_ch == ((45 : stdgo.GoUInt8))) {
                _digits = (_digits.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L266"
        while (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L267"
            if ((((48 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _digits = (_digits.__append__(_ch) : stdgo.Slice<stdgo.GoUInt8>);
                _prev = (48 : stdgo.GoInt32);
                _hasDigits = true;
            } else if (((_ch == (95 : stdgo.GoUInt8)) && _sepOk : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L272"
                if (_prev != ((48 : stdgo.GoInt32))) {
                    _invalSep = true;
                };
                _prev = (95 : stdgo.GoInt32);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L277"
                _r.unreadByte();
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L278"
                break;
            };
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L283"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L286"
        if (((_err == null) && !_hasDigits : Bool)) {
            _err = stdgo._internal.math.big.Big__errnodigits._errNoDigits;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L289"
        if (_err == null) {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt((_digits : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _exp = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L293"
        if (((_err == null) && ((_invalSep || (_prev == (95 : stdgo.GoInt32)) : Bool)) : Bool)) {
            _err = stdgo._internal.math.big.Big__errinvalsep._errInvalSep;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L297"
        return { _0 : _exp, _1 : _base, _2 : _err };
    }
