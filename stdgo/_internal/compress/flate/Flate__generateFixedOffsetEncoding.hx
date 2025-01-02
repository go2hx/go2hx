package stdgo._internal.compress.flate;
function _generateFixedOffsetEncoding():stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> {
        var _h = stdgo._internal.compress.flate.Flate__newHuffmanEncoder._newHuffmanEncoder((30 : stdgo.GoInt));
        var _codes = (@:checkr _h ?? throw "null pointer dereference")._codes;
        for (_ch => _ in _codes) {
            _codes[(_ch : stdgo.GoInt)] = ({ _code : stdgo._internal.compress.flate.Flate__reverseBits._reverseBits((_ch : stdgo.GoUInt16), (5 : stdgo.GoUInt8)), _len : (5 : stdgo.GoUInt16) } : stdgo._internal.compress.flate.Flate_T_hcode.T_hcode);
        };
        return _h;
    }
