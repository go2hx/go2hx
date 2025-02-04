package stdgo._internal.compress.flate;
function _fixedHuffmanDecoderInit():Void {
        @:check2 stdgo._internal.compress.flate.Flate__fixedonce._fixedOnce.do_(function():Void {
            var _bits:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(288, 288).__setNumber32__();
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (144 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                    _i++;
                };
            };
            {
                var _i = (144 : stdgo.GoInt);
                while ((_i < (256 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (9 : stdgo.GoInt);
                    _i++;
                };
            };
            {
                var _i = (256 : stdgo.GoInt);
                while ((_i < (280 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (7 : stdgo.GoInt);
                    _i++;
                };
            };
            {
                var _i = (280 : stdgo.GoInt);
                while ((_i < (288 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                    _i++;
                };
            };
            @:check2 stdgo._internal.compress.flate.Flate__fixedhuffmandecoder._fixedHuffmanDecoder._init((_bits.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        });
    }
