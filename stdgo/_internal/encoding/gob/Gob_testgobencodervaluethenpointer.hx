package stdgo._internal.encoding.gob;
function testGobEncoderValueThenPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = ((("forty-two" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
        var _w = ((("six-by-nine" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
        var _w__pointer__ = stdgo.Go.pointer(_w);
        var _w__pointer__ = stdgo.Go.pointer(_w);
        var _w__pointer__ = stdgo.Go.pointer(_w);
        var _w__pointer__ = stdgo.Go.pointer(_w);
        var _bv = ((("1nanocentury" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
        var _bw = ((("πseconds" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
        var _bw__pointer__ = stdgo.Go.pointer(_bw);
        var _bw__pointer__ = stdgo.Go.pointer(_bw);
        var _bw__pointer__ = stdgo.Go.pointer(_bw);
        var _bw__pointer__ = stdgo.Go.pointer(_bw);
        var _tv = ((("gravitationalacceleration" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
        var _tw = ((("π²ft/s²" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
        var _tw__pointer__ = stdgo.Go.pointer(_tw);
        var _tw__pointer__ = stdgo.Go.pointer(_tw);
        var _tw__pointer__ = stdgo.Go.pointer(_tw);
        var _tw__pointer__ = stdgo.Go.pointer(_tw);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L452"
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6((42 : stdgo.GoInt), _v, _w__pointer__, _bv, _bw__pointer__, _tv, _tw__pointer__) : stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L453"
                _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L457"
        {
            var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L458"
                _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L461"
        {
            var __0 = ((@:checkr _x ?? throw "null pointer dereference").v : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber), __1 = (_v : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L462"
                _t.errorf(("v = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L464"
        {
            var __0 = (@:checkr _x ?? throw "null pointer dereference").w, __1 = (_w : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L465"
                _t.errorf(("w = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L467"
                _t.errorf(("w = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L470"
        {
            var __0 = ((@:checkr _x ?? throw "null pointer dereference").bV : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber), __1 = (_bv : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L471"
                _t.errorf(("bv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L473"
        {
            var __0 = (@:checkr _x ?? throw "null pointer dereference").bW, __1 = (_bw : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L474"
                _t.errorf(("bw = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L476"
                _t.errorf(("bw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L479"
        {
            var __0 = ((@:checkr _x ?? throw "null pointer dereference").tV : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber), __1 = (_tv : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L480"
                _t.errorf(("tv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L482"
        {
            var __0 = (@:checkr _x ?? throw "null pointer dereference").tW, __1 = (_tw : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L483"
                _t.errorf(("tw = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L485"
                _t.errorf(("tw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
