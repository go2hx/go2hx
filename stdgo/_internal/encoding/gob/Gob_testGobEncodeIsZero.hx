package stdgo._internal.encoding.gob;
function testGobEncodeIsZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (new stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug(stdgo._internal.time.Time_unix.unix((1000000000i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__(), ("hello" : stdgo.GoString), (-55 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray)?.__copy__(), (new stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface() : stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface)) : stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y:stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug = ({} : stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug);
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (stdgo.Go.toInterface(_x) != stdgo.Go.toInterface(_y)) {
            _t.fatalf(("%v != %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
