package stdgo._internal.math.big;
function testAppendText(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (__14 => _test in stdgo._internal.math.big.Big__stringTests._stringTests) {
            if (!_test._ok) {
                continue;
            };
            var __tmp__ = _z.setString(_test._in?.__copy__(), _test._base), __15:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("%v: failed to parse" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                continue;
            };
            var _base = (_test._base : stdgo.GoInt);
            if (_base == ((0 : stdgo.GoInt))) {
                _base = (10 : stdgo.GoInt);
            };
            var _i = (_buf.length : stdgo.GoInt);
            _buf = _z.append(_buf, _base);
            {
                var _got = (((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._out)) {
                    _t.errorf(("%v: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }