package stdgo._internal.net.http;
function _seeUpcomingDoubleCRLF(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):Bool {
        {
            var _peekSize = (4 : stdgo.GoInt);
            stdgo.Go.cfor(true, _peekSize++, {
                var __tmp__ = _r.peek(_peekSize), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_buf, stdgo._internal.net.http.Http__doubleCRLF._doubleCRLF)) {
                    return true;
                };
                if (_err != null) {
                    break;
                };
            });
        };
        return false;
    }
