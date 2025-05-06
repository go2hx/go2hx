package stdgo._internal.go.constant;
function makeFromBytes(_bytes:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.go.constant.Constant_value.Value {
        var _words = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(((((_bytes.length) + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        var _i = (0 : stdgo.GoInt);
        var _w:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L740"
        for (__1 => _b in _bytes) {
            _w = (_w | (((_b : stdgo._internal.math.big.Big_word.Word) << _s : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L742"
            {
                _s = (_s + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                if (_s == ((32u32 : stdgo.GoUInt))) {
                    _words[(_i : stdgo.GoInt)] = _w;
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L744"
                    _i++;
                    _w = (0u32 : stdgo._internal.math.big.Big_word.Word);
                    _s = (0u32 : stdgo.GoUInt);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L750"
        if ((_i < (_words.length) : Bool)) {
            _words[(_i : stdgo.GoInt)] = _w;
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L752"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L755"
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_words[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L756"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L759"
        return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().setBits((_words.__slice__(0, _i) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>)));
    }
