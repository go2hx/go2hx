package _internal.encoding.gob_test;
function example_encodeDecode():Void {
        var _network:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.encoding.gob_test.Gob_test_Vector.Vector((3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)) : _internal.encoding.gob_test.Gob_test_Vector.Vector)))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _v:_internal.encoding.gob_test.Gob_test_Vector.Vector = ({} : _internal.encoding.gob_test.Gob_test_Vector.Vector);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<_internal.encoding.gob_test.Gob_test_Vector.Vector>))));
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
    }
