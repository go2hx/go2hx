package stdgo._internal.encoding.gob;
function testChanFuncIgnored(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _f = (function():Void {} : () -> Void);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _f__pointer__ = stdgo.Go.pointer(_f);
        var _fp = _f__pointer__;
        var _b0 = (new stdgo._internal.encoding.gob.Gob_bug2.Bug2((23 : stdgo.GoInt), _c, (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>), _f, stdgo.Go.pointer(_fp)) : stdgo._internal.encoding.gob.Gob_bug2.Bug2);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_b0))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("error encoding:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _b1:stdgo._internal.encoding.gob.Gob_bug2.Bug2 = ({} : stdgo._internal.encoding.gob.Gob_bug2.Bug2);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug2.Bug2>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_b1.a != (_b0.a)) {
            @:check2r _t.fatalf(("got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_b1.a), stdgo.Go.toInterface(_b0.a));
        };
        if ((((_b1.c != null || (_b1.cP != null && ((_b1.cP : Dynamic).__nil__ == null || !(_b1.cP : Dynamic).__nil__)) : Bool) || _b1.f != null : Bool) || (_b1.fPP != null) : Bool)) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("unexpected value for chan or func" : stdgo.GoString)));
        };
    }
