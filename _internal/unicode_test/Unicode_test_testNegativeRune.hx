package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _nonLatin1 = (new stdgo.Slice<stdgo.GoUInt32>(8, 8, ...[(256u32 : stdgo.GoUInt32), (257u32 : stdgo.GoUInt32), (453u32 : stdgo.GoUInt32), (768u32 : stdgo.GoUInt32), (1632u32 : stdgo.GoUInt32), (894u32 : stdgo.GoUInt32), (706u32 : stdgo.GoUInt32), (5760u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((255 : stdgo.GoInt) + (_nonLatin1.length) : stdgo.GoInt) : Bool), _i++, {
                var _base = (_i : stdgo.GoUInt32);
                if ((_i >= (255 : stdgo.GoInt) : Bool)) {
                    _base = _nonLatin1[(_i - (255 : stdgo.GoInt) : stdgo.GoInt)];
                };
                var _r = ((_base - (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_letter.letter, _r)) {
                    _t.errorf(("Is(Letter, 0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isControl.isControl(_r)) {
                    _t.errorf(("IsControl(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isDigit.isDigit(_r)) {
                    _t.errorf(("IsDigit(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isGraphic.isGraphic(_r)) {
                    _t.errorf(("IsGraphic(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isLetter.isLetter(_r)) {
                    _t.errorf(("IsLetter(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isLower.isLower(_r)) {
                    _t.errorf(("IsLower(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isMark.isMark(_r)) {
                    _t.errorf(("IsMark(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isNumber.isNumber(_r)) {
                    _t.errorf(("IsNumber(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isPrint.isPrint(_r)) {
                    _t.errorf(("IsPrint(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isPunct.isPunct(_r)) {
                    _t.errorf(("IsPunct(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isSpace.isSpace(_r)) {
                    _t.errorf(("IsSpace(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isSymbol.isSymbol(_r)) {
                    _t.errorf(("IsSymbol(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isTitle.isTitle(_r)) {
                    _t.errorf(("IsTitle(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (stdgo._internal.unicode.Unicode_isUpper.isUpper(_r)) {
                    _t.errorf(("IsUpper(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
            });
        };
    }
