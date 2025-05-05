package stdgo._internal.encoding.gob;
function _encAndDec(_in:stdgo.AnyInterface, _out:stdgo.AnyInterface):stdgo.Error {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(_in) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L279"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L280"
            return _err;
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(_out);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L284"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L285"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L287"
        return (null : stdgo.Error);
    }
