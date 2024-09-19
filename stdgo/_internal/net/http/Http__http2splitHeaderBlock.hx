package stdgo._internal.net.http;
function _http2splitHeaderBlock(_ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, _headerBlock:stdgo.Slice<stdgo.GoUInt8>, _fn:(stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, stdgo.Slice<stdgo.GoUInt8>, Bool, Bool) -> stdgo.Error):stdgo.Error {
        {};
        var _first = (true : Bool);
        while (((_headerBlock.length) > (0 : stdgo.GoInt) : Bool)) {
            var _frag = _headerBlock;
            if (((_frag.length) > (16384 : stdgo.GoInt) : Bool)) {
                _frag = (_frag.__slice__(0, (16384 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _headerBlock = (_headerBlock.__slice__((_frag.length)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err = (_fn(_ctx, _frag, _first, (_headerBlock.length) == ((0 : stdgo.GoInt))) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _first = false;
        };
        return (null : stdgo.Error);
    }
