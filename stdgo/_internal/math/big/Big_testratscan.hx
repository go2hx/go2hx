package stdgo._internal.math.big;
function testRatScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L219"
        for (_i => _test in stdgo._internal.math.big.Big__setstringtests._setStringTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L221"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L222"
            _buf.writeString(_test._in?.__copy__());
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L225"
            if (_err == null != (_test._ok)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L226"
                if (_test._ok) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L227"
                    _t.errorf(("#%d (%s) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_err));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L229"
                    _t.errorf(("#%d (%s) expected error" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L231"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L233"
            if (((_err == null) && (_x.ratString() != _test._out) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L234"
                _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x.ratString()), stdgo.Go.toInterface(_test._out));
            };
        };
    }
