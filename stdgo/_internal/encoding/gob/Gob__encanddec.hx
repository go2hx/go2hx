package stdgo._internal.encoding.gob;
function _encAndDec(_in:stdgo.AnyInterface, _out:stdgo.AnyInterface):stdgo.Error {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(_in) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = @:check2r _dec.decode(_out);
        if (_err != null) {
            return _err;
        };
        return (null : stdgo.Error);
    }
