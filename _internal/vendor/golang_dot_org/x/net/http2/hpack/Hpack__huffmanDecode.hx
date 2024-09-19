package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _huffmanDecode(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _maxLen:stdgo.GoInt, _v:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _rootHuffmanNode = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__getRootHuffmanNode._getRootHuffmanNode();
        var _n = _rootHuffmanNode;
        var __0 = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt), __1 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __2 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _sbits = __2, _cbits = __1, _cur = __0;
        for (__10 => _b in _v) {
            _cur = ((_cur << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) | (_b : stdgo.GoUInt) : stdgo.GoUInt);
            _cbits = (_cbits + ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _sbits = (_sbits + ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            while ((_cbits >= (8 : stdgo.GoUInt8) : Bool)) {
                var _idx = ((_cur >> ((_cbits - (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt) : stdgo.GoUInt8);
                _n = _n._children[(_idx : stdgo.GoInt)];
                if (_n == null || (_n : Dynamic).__nil__) {
                    return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errInvalidHuffman.errInvalidHuffman;
                };
                if (_n._children == null || (_n._children : Dynamic).__nil__) {
                    if (((_maxLen != (0 : stdgo.GoInt)) && (_buf.len() == _maxLen) : Bool)) {
                        return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errStringLength.errStringLength;
                    };
                    _buf.writeByte(_n._sym);
                    _cbits = (_cbits - (_n._codeLen) : stdgo.GoUInt8);
                    _n = _rootHuffmanNode;
                    _sbits = _cbits;
                } else {
                    _cbits = (_cbits - ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            };
        };
        while ((_cbits > (0 : stdgo.GoUInt8) : Bool)) {
            _n = _n._children[(((_cur << (((8 : stdgo.GoUInt8) - _cbits : stdgo.GoUInt8)) : stdgo.GoUInt) : stdgo.GoUInt8) : stdgo.GoInt)];
            if (_n == null || (_n : Dynamic).__nil__) {
                return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errInvalidHuffman.errInvalidHuffman;
            };
            if ((((_n._children != null) && ((_n._children : Dynamic).__nil__ == null || !(_n._children : Dynamic).__nil__)) || (_n._codeLen > _cbits : Bool) : Bool)) {
                break;
            };
            if (((_maxLen != (0 : stdgo.GoInt)) && (_buf.len() == _maxLen) : Bool)) {
                return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errStringLength.errStringLength;
            };
            _buf.writeByte(_n._sym);
            _cbits = (_cbits - (_n._codeLen) : stdgo.GoUInt8);
            _n = _rootHuffmanNode;
            _sbits = _cbits;
        };
        if ((_sbits > (7 : stdgo.GoUInt8) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errInvalidHuffman.errInvalidHuffman;
        };
        {
            var _mask = ((((1u32 : stdgo.GoUInt) << _cbits : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_cur & _mask : stdgo.GoUInt) != (_mask)) {
                return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errInvalidHuffman.errInvalidHuffman;
            };
        };
        return (null : stdgo.Error);
    }
