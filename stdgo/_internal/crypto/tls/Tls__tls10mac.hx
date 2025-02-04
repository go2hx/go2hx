package stdgo._internal.crypto.tls;
function _tls10MAC(_h:stdgo._internal.hash.Hash_hash.Hash, _out:stdgo.Slice<stdgo.GoUInt8>, _seq:stdgo.Slice<stdgo.GoUInt8>, _header:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo.Slice<stdgo.GoUInt8>, _extra:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        _h.reset();
        _h.write(_seq);
        _h.write(_header);
        _h.write(_data);
        var _res = _h.sum(_out);
        if (_extra != null) {
            _h.write(_extra);
        };
        return _res;
    }
