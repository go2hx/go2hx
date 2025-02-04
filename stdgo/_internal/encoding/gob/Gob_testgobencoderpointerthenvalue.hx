package stdgo._internal.encoding.gob;
function testGobEncoderPointerThenValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = ((("forty-two" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
        var _v__pointer__ = stdgo.Go.pointer(_v);
        var _v__pointer__ = stdgo.Go.pointer(_v);
        var _v__pointer__ = stdgo.Go.pointer(_v);
        var _v__pointer__ = stdgo.Go.pointer(_v);
        var _w = ((("six-by-nine" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
        var _bv = ((("1nanocentury" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
        var _bv__pointer__ = stdgo.Go.pointer(_bv);
        var _bv__pointer__ = stdgo.Go.pointer(_bv);
        var _bv__pointer__ = stdgo.Go.pointer(_bv);
        var _bv__pointer__ = stdgo.Go.pointer(_bv);
        var _bw = ((("πseconds" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
        var _tv = ((("gravitationalacceleration" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
        var _tv__pointer__ = stdgo.Go.pointer(_tv);
        var _tv__pointer__ = stdgo.Go.pointer(_tv);
        var _tv__pointer__ = stdgo.Go.pointer(_tv);
        var _tv__pointer__ = stdgo.Go.pointer(_tv);
        var _tw = ((("π²ft/s²" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7((42 : stdgo.GoInt), _v__pointer__, _w, _bv__pointer__, _bw, _tv__pointer__, _tw) : stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7>);
        {
            var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0 = (@:checkr _x ?? throw "null pointer dereference").v, __1 = (_v : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                @:check2r _t.errorf(("v = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                @:check2r _t.errorf(("v = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = ((@:checkr _x ?? throw "null pointer dereference").w : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber), __1 = (_w : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                @:check2r _t.errorf(("w = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (@:checkr _x ?? throw "null pointer dereference").bV, __1 = (_bv : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                @:check2r _t.errorf(("bv = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                @:check2r _t.errorf(("bv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = ((@:checkr _x ?? throw "null pointer dereference").bW : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber), __1 = (_bw : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                @:check2r _t.errorf(("bw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (@:checkr _x ?? throw "null pointer dereference").tV, __1 = (_tv : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                @:check2r _t.errorf(("tv = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                @:check2r _t.errorf(("tv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = ((@:checkr _x ?? throw "null pointer dereference").tW : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber), __1 = (_tw : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                @:check2r _t.errorf(("tw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
