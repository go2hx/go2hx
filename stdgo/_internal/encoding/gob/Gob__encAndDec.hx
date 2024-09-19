package stdgo._internal.encoding.gob;
function _encAndDec(_in:stdgo.AnyInterface, _out:stdgo.AnyInterface):stdgo.Error {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(_in) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(_out);
        if (_err != null) {
            return _err;
        };
        return (null : stdgo.Error);
    }
