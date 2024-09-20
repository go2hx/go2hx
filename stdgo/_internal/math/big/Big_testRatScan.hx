package stdgo._internal.math.big;
function testRatScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        for (_i => _test in stdgo._internal.math.big.Big__setStringTests._setStringTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
            _buf.reset();
            _buf.writeString(_test._in?.__copy__());
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null != (_test._ok)) {
                if (_test._ok) {
                    _t.errorf(("#%d (%s) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_err));
                } else {
                    _t.errorf(("#%d (%s) expected error" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                continue;
            };
            if (((_err == null) && (_x.ratString() != _test._out) : Bool)) {
                _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x.ratString()), stdgo.Go.toInterface(_test._out));
            };
        };
    }
