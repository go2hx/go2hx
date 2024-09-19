package stdgo._internal.compress.flate;
function _generateFixedLiteralEncoding():stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> {
        var _h = stdgo._internal.compress.flate.Flate__newHuffmanEncoder._newHuffmanEncoder((286 : stdgo.GoInt));
        var _codes = _h._codes;
        var _ch:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        {
            _ch = (0 : stdgo.GoUInt16);
            stdgo.Go.cfor((_ch < (286 : stdgo.GoUInt16) : Bool), _ch++, {
                var _bits:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _size:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                if ((_ch < (144 : stdgo.GoUInt16) : Bool)) {
                    _bits = (_ch + (48 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (8 : stdgo.GoUInt16);
                } else if ((_ch < (256 : stdgo.GoUInt16) : Bool)) {
                    _bits = ((_ch + (400 : stdgo.GoUInt16) : stdgo.GoUInt16) - (144 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (9 : stdgo.GoUInt16);
                } else if ((_ch < (280 : stdgo.GoUInt16) : Bool)) {
                    _bits = (_ch - (256 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (7 : stdgo.GoUInt16);
                } else {
                    _bits = ((_ch + (192 : stdgo.GoUInt16) : stdgo.GoUInt16) - (280 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (8 : stdgo.GoUInt16);
                };
                _codes[(_ch : stdgo.GoInt)] = ({ _code : stdgo._internal.compress.flate.Flate__reverseBits._reverseBits(_bits, (_size : stdgo.GoUInt8)), _len : _size } : stdgo._internal.compress.flate.Flate_T_hcode.T_hcode);
            });
        };
        return _h;
    }
