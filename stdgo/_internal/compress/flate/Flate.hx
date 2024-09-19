package stdgo._internal.compress.flate;
@:keep var __init_go2hx__ = {
        try {
            var _offsetFreq = (new stdgo.Slice<stdgo.GoInt32>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            _offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
            stdgo._internal.compress.flate.Flate__huffOffset._huffOffset = stdgo._internal.compress.flate.Flate__newHuffmanEncoder._newHuffmanEncoder((30 : stdgo.GoInt));
            stdgo._internal.compress.flate.Flate__huffOffset._huffOffset._generate(_offsetFreq, (15 : stdgo.GoInt32));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
