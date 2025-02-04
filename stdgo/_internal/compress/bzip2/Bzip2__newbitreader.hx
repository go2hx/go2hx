package stdgo._internal.compress.bzip2;
function _newBitReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_bytereader.ByteReader)) : stdgo._internal.io.Io_bytereader.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_bytereader.ByteReader), _1 : false };
        }, _byter = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _byter = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_r));
        };
        return ({ _r : _byter } : stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader);
    }
