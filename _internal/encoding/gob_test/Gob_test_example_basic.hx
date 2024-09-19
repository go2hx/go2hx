package _internal.encoding.gob_test;
function example_basic():Void {
        var _network:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _err = (_enc.encode(stdgo.Go.toInterface((new _internal.encoding.gob_test.Gob_test_P.P((3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), ("Pythagoras" : stdgo.GoString)) : _internal.encoding.gob_test.Gob_test_P.P))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _enc.encode(stdgo.Go.toInterface((new _internal.encoding.gob_test.Gob_test_P.P((1782 : stdgo.GoInt), (1841 : stdgo.GoInt), (1922 : stdgo.GoInt), ("Treehouse" : stdgo.GoString)) : _internal.encoding.gob_test.Gob_test_P.P)));
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _q:_internal.encoding.gob_test.Gob_test_Q.Q = ({} : _internal.encoding.gob_test.Gob_test_Q.Q);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_q) : stdgo.Ref<_internal.encoding.gob_test.Gob_test_Q.Q>)));
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("decode error 1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q: {%d, %d}\n" : stdgo.GoString), stdgo.Go.toInterface(_q.name), stdgo.Go.toInterface(_q.x.value), stdgo.Go.toInterface(_q.y.value));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_q) : stdgo.Ref<_internal.encoding.gob_test.Gob_test_Q.Q>)));
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("decode error 2:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q: {%d, %d}\n" : stdgo.GoString), stdgo.Go.toInterface(_q.name), stdgo.Go.toInterface(_q.x.value), stdgo.Go.toInterface(_q.y.value));
    }
