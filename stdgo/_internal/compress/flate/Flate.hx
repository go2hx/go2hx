package stdgo._internal.compress.flate;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.compress.flate.Flate__levels._levels, __tmp__1 = stdgo._internal.compress.flate.Flate__errwriterclosed._errWriterClosed, __tmp__2 = stdgo._internal.compress.flate.Flate__lengthextrabits._lengthExtraBits, __tmp__3 = stdgo._internal.compress.flate.Flate__lengthbase._lengthBase, __tmp__4 = stdgo._internal.compress.flate.Flate__offsetextrabits._offsetExtraBits, __tmp__5 = stdgo._internal.compress.flate.Flate__offsetbase._offsetBase, __tmp__6 = stdgo._internal.compress.flate.Flate__codegenorder._codegenOrder, __tmp__7 = stdgo._internal.compress.flate.Flate__fixedoffsetencoding._fixedOffsetEncoding, __tmp__8 = stdgo._internal.compress.flate.Flate__fixedliteralencoding._fixedLiteralEncoding, __tmp__9 = stdgo._internal.compress.flate.Flate__codeorder._codeOrder, __tmp__10 = stdgo._internal.compress.flate.Flate__lengthcodes._lengthCodes, __tmp__11 = stdgo._internal.compress.flate.Flate__offsetcodes._offsetCodes;
            var _offsetFreq = (new stdgo.Slice<stdgo.GoInt32>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            _offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
            stdgo._internal.compress.flate.Flate__huffoffset._huffOffset = stdgo._internal.compress.flate.Flate__newhuffmanencoder._newHuffmanEncoder((30 : stdgo.GoInt));
            @:check2r stdgo._internal.compress.flate.Flate__huffoffset._huffOffset._generate(_offsetFreq, (15 : stdgo.GoInt32));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
