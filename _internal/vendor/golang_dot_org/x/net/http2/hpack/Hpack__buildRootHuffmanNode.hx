package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _buildRootHuffmanNode():Void {
        if (false) {
            throw stdgo.Go.toInterface(("unexpected size" : stdgo.GoString));
        };
        _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__lazyRootHuffmanNode._lazyRootHuffmanNode = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__newInternalNode._newInternalNode();
        var _leaves = (stdgo.Go.setRef(new stdgo.GoArray<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node>(256, 256, ...[for (i in 0 ... 256) ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node)])) : stdgo.Ref<stdgo.GoArray<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node>>);
        for (_sym => _code in _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanCodes._huffmanCodes) {
            var _codeLen = (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanCodeLen._huffmanCodeLen[(_sym : stdgo.GoInt)] : stdgo.GoUInt8);
            var _cur = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__lazyRootHuffmanNode._lazyRootHuffmanNode;
            while ((_codeLen > (8 : stdgo.GoUInt8) : Bool)) {
                _codeLen = (_codeLen - ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                var _i = ((_code >> _codeLen : stdgo.GoUInt32) : stdgo.GoUInt8);
                if (_cur._children[(_i : stdgo.GoInt)] == null || (_cur._children[(_i : stdgo.GoInt)] : Dynamic).__nil__) {
                    _cur._children[(_i : stdgo.GoInt)] = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__newInternalNode._newInternalNode();
                };
                _cur = _cur._children[(_i : stdgo.GoInt)];
            };
            var _shift = ((8 : stdgo.GoUInt8) - _codeLen : stdgo.GoUInt8);
            var __0 = (((_code << _shift : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt), __1 = (((1 : stdgo.GoInt) << _shift : stdgo.GoInt) : stdgo.GoInt);
var _end = __1, _start = __0;
            _leaves[(_sym : stdgo.GoInt)]._sym = (_sym : stdgo.GoUInt8);
            _leaves[(_sym : stdgo.GoInt)]._codeLen = _codeLen;
            {
                var _i = (_start : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_start + _end : stdgo.GoInt) : Bool), _i++, {
                    _cur._children[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(_leaves[(_sym : stdgo.GoInt)]) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node>);
                });
            };
        };
    }
