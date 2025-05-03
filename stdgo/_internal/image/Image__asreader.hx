package stdgo._internal.image;
function _asReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.image.Image_t_reader.T_reader {
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L52"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.image.Image_t_reader.T_reader)) : stdgo._internal.image.Image_t_reader.T_reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.Image_t_reader.T_reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/image/format.go#L53"
                return _rr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L55"
        return stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_r));
    }
