package stdgo._internal.encoding.gob;
function testReorderedFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _rt0:stdgo._internal.encoding.gob.Gob_rt0.RT0 = ({} : stdgo._internal.encoding.gob.Gob_rt0.RT0);
        _rt0.a = (17 : stdgo.GoInt);
        _rt0.b = ("hello" : stdgo.GoString);
        _rt0.c = (3.14159 : stdgo.GoFloat64);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L940"
        stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_rt0)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _rt1:stdgo._internal.encoding.gob.Gob_rt1.RT1 = ({} : stdgo._internal.encoding.gob.Gob_rt1.RT1);
        var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rt1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_rt1.RT1>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L945"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L946"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L948"
        if (((_rt0.a != (_rt1.a) || _rt0.b != (_rt1.b) : Bool) || (_rt0.c != _rt1.c) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L949"
            _t.errorf(("rt1->rt0: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt1)));
        };
    }
