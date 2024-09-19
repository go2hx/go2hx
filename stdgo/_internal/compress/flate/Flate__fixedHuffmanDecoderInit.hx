package stdgo._internal.compress.flate;
function _fixedHuffmanDecoderInit():Void {
        stdgo._internal.compress.flate.Flate__fixedOnce._fixedOnce.do_(function():Void {
            var _bits:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(288, 288, ...[for (i in 0 ... 288) (0 : stdgo.GoInt)]);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (144 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                });
            };
            {
                var _i = (144 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (9 : stdgo.GoInt);
                });
            };
            {
                var _i = (256 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (280 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (7 : stdgo.GoInt);
                });
            };
            {
                var _i = (280 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (288 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                });
            };
            stdgo._internal.compress.flate.Flate__fixedHuffmanDecoder._fixedHuffmanDecoder._init((_bits.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        });
    }
