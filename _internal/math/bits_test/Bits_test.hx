package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.math.bits_test.Bits_test_input.input;
            _internal.math.bits_test.Bits_test__tab._tab[(0 : stdgo.GoInt)] = ({ _nlz : (8 : stdgo.GoInt), _ntz : (8 : stdgo.GoInt), _pop : (0 : stdgo.GoInt) } : _internal.math.bits_test.Bits_test_T_entry.T_entry);
            {
                var _i = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_internal.math.bits_test.Bits_test__tab._tab.length) : Bool), _i++, {
                    var _x = (_i : stdgo.GoInt);
                    var _n = (0 : stdgo.GoInt);
                    while ((_x & (128 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _n++;
                        _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._nlz = _n;
                    _x = _i;
                    _n = (0 : stdgo.GoInt);
                    while ((_x & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _n++;
                        _x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._ntz = _n;
                    _x = _i;
                    _n = (0 : stdgo.GoInt);
                    while (_x != ((0 : stdgo.GoInt))) {
                        _n = (_n + ((_x & (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                        _x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._pop = _n;
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
