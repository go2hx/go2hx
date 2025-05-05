package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.T_huffmanLUT_asInterface) class T_huffmanLUT_static_extension {
    @:keep
    @:tdfield
    static public function _init( _h:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_huffmanlut.T_huffmanLUT>, _s:stdgo._internal.image.jpeg.Jpeg_t_huffmanspec.T_huffmanSpec):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_huffmanlut.T_huffmanLUT> = _h;
        var _maxValue = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L183"
        for (__0 => _v in _s._value) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L184"
            if (((_v : stdgo.GoInt) > _maxValue : Bool)) {
                _maxValue = (_v : stdgo.GoInt);
            };
        };
        (_h : stdgo._internal.image.jpeg.Jpeg_t_huffmanlut.T_huffmanLUT).__setData__((new stdgo.Slice<stdgo.GoUInt32>((_maxValue + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>));
        var __0 = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = (0 : stdgo.GoInt);
var _k = __1, _code = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L190"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s._count.length) : Bool)) {
                var _nBits = (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L192"
                {
                    var _j = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    while ((_j < _s._count[(_i : stdgo.GoInt)] : Bool)) {
                        ((_h : stdgo._internal.image.jpeg.Jpeg_t_huffmanlut.T_huffmanLUT))[(_s._value[(_k : stdgo.GoInt)] : stdgo.GoInt)] = (_nBits | _code : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L194"
                        _code++;
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L195"
                        _k++;
                        _j++;
                    };
                };
_code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                _i++;
            };
        };
    }
}
