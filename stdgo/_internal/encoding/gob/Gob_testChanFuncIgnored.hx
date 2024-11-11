package stdgo._internal.encoding.gob;
function testChanFuncIgnored(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _f = (function():Void {} : () -> Void);
        var _fp = stdgo.Go.pointer(_f);
        var _b0 = (new stdgo._internal.encoding.gob.Gob_Bug2.Bug2((23 : stdgo.GoInt), _c, (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>), _f, stdgo.Go.pointer(_fp)) : stdgo._internal.encoding.gob.Gob_Bug2.Bug2);
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(_b0)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("error encoding:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _b1:stdgo._internal.encoding.gob.Gob_Bug2.Bug2 = ({} : stdgo._internal.encoding.gob.Gob_Bug2.Bug2);
        var _err = (stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug2.Bug2>))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_b1.a != (_b0.a)) {
            _t.fatalf(("got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_b1.a), stdgo.Go.toInterface(_b0.a));
        };
        if ((((_b1.c != null || (_b1.cp != null && ((_b1.cp : Dynamic).__nil__ == null || !(_b1.cp : Dynamic).__nil__)) : Bool) || _b1.f != null : Bool) || (_b1.fpp != null) : Bool)) {
            _t.fatal(stdgo.Go.toInterface(("unexpected value for chan or func" : stdgo.GoString)));
        };
    }
