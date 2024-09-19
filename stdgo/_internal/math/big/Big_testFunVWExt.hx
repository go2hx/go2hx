package stdgo._internal.math.big;
function testFunVWExt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _vwSizes:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(16, 16, ...[
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(23 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(34 : stdgo.GoInt),
(35 : stdgo.GoInt),
(36 : stdgo.GoInt),
(50 : stdgo.GoInt),
(120 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__14 => _n in _vwSizes) {
            var _x = stdgo._internal.math.big.Big__rndV._rndV(_n);
            var _y = (stdgo._internal.math.big.Big__rndW._rndW() : stdgo._internal.math.big.Big_Word.Word);
            var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _arg = (new stdgo._internal.math.big.Big_T_argVW.T_argVW(_z, _x, _y, (0u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVWext._testFunVWext(_t, ("addVW, random inputs" : stdgo.GoString), stdgo._internal.math.big.Big__addVW._addVW, stdgo._internal.math.big.Big__addVW_g._addVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVWext._testFunVWext(_t, ("subVW, random inputs" : stdgo.GoString), stdgo._internal.math.big.Big__subVW._subVW, stdgo._internal.math.big.Big__subVW_g._subVW_g, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argVW.T_argVW(_x, _x, _y, (0u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVWext._testFunVWext(_t, ("addVW, random inputs, sharing storage" : stdgo.GoString), stdgo._internal.math.big.Big__addVW._addVW, stdgo._internal.math.big.Big__addVW_g._addVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVWext._testFunVWext(_t, ("subVW, random inputs, sharing storage" : stdgo.GoString), stdgo._internal.math.big.Big__subVW._subVW, stdgo._internal.math.big.Big__subVW_g._subVW_g, _arg?.__copy__());
            _y = (-1u32 : stdgo._internal.math.big.Big_Word.Word);
            _x = stdgo._internal.math.big.Big__makeWordVec._makeWordVec(_y, _n);
            _arg = (new stdgo._internal.math.big.Big_T_argVW.T_argVW(_z, _x, _y, (0u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVWext._testFunVWext(_t, ("addVW, vector of max uint" : stdgo.GoString), stdgo._internal.math.big.Big__addVW._addVW, stdgo._internal.math.big.Big__addVW_g._addVW_g, _arg?.__copy__());
            _x = stdgo._internal.math.big.Big__makeWordVec._makeWordVec((0u32 : stdgo._internal.math.big.Big_Word.Word), _n);
            _arg = (new stdgo._internal.math.big.Big_T_argVW.T_argVW(_z, _x, (1u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVWext._testFunVWext(_t, ("subVW, vector of zero" : stdgo.GoString), stdgo._internal.math.big.Big__subVW._subVW, stdgo._internal.math.big.Big__subVW_g._subVW_g, _arg?.__copy__());
        };
    }