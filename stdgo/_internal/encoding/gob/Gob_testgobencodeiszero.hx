package stdgo._internal.encoding.gob;
function testGobEncodeIsZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = (new stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug(stdgo._internal.time.Time_unix.unix((1000000000i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__(), ("hello" : stdgo.GoString), (-55 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.encoding.gob.Gob_t_iszerobugarray.T_isZeroBugArray)?.__copy__(), (new stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface() : stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface)) : stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L754"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L755"
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y:stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug = ({} : stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug);
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L760"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L761"
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L763"
        if (stdgo.Go.toInterface(_x) != stdgo.Go.toInterface(_y)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L764"
            _t.fatalf(("%v != %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
    }
