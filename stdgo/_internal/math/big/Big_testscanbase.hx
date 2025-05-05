package stdgo._internal.math.big;
function testScanBase(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L227"
        for (__8 => _a in stdgo._internal.math.big.Big__natscantests._natScanTests) {
            var _r = stdgo._internal.strings.Strings_newreader.newReader(_a._s?.__copy__());
            var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._scan(stdgo.Go.asInterface(_r), _a._base, _a._frac), _x:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, _count:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L230"
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_a._err))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L231"
                _t.errorf(("scan%+v\n\tgot error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_a._err));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L233"
            if (_x._cmp(_a._x) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L234"
                _t.errorf(("scan%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L236"
            if (_b != (_a._b)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L237"
                _t.errorf(("scan%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._base));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L239"
            if (_count != (_a._count)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L240"
                _t.errorf(("scan%+v\n\tgot count = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_count), stdgo.Go.toInterface(_a._count));
            };
            var __tmp__ = _r.readRune(), _next:stdgo.GoInt32 = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L243"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _next = (0 : stdgo.GoInt32);
                _err = (null : stdgo.Error);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L247"
            if (((_err == null) && (_next != _a._next) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L248"
                _t.errorf(("scan%+v\n\tgot next = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_a._next));
            };
        };
    }
