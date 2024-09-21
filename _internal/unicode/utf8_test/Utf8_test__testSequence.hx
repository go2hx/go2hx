package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function _testSequence(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _s:stdgo.GoString):Void {
        {};
        var _index = (new stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_T__testSequence___localname___info_8684.T__testSequence___localname___info_8684>((_s.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_s.length : stdgo.GoInt).toBasic() > 0 ? (_s.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.unicode.utf8_test.Utf8_test_T__testSequence___localname___info_8684.T__testSequence___localname___info_8684)]) : stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_T__testSequence___localname___info_8684.T__testSequence___localname___info_8684>);
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var _si = (0 : stdgo.GoInt);
        var _j = (0 : stdgo.GoInt);
        for (_i => _r in _s) {
            if (_si != (_i)) {
                _t.errorf(("Sequence(%q) mismatched index %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_i));
                return;
            };
            _index[(_j : stdgo.GoInt)] = (new _internal.unicode.utf8_test.Utf8_test_T__testSequence___localname___info_8684.T__testSequence___localname___info_8684(_i, _r) : _internal.unicode.utf8_test.Utf8_test_T__testSequence___localname___info_8684.T__testSequence___localname___info_8684);
            _j++;
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _size1:stdgo.GoInt = __tmp__._1;
            if (_r != (_r1)) {
                _t.errorf(("DecodeRune(%q) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.GoString)), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r));
                return;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, _size2:stdgo.GoInt = __tmp__._1;
            if (_r != (_r2)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.GoString)), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_r));
                return;
            };
            if (_size1 != (_size2)) {
                _t.errorf(("DecodeRune/DecodeRuneInString(%q) size mismatch %d/%d" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.GoString)), stdgo.Go.toInterface(_size1), stdgo.Go.toInterface(_size2));
                return;
            };
            _si = (_si + (_size1) : stdgo.GoInt);
        };
        _j--;
        {
            _si = (_s.length);
            while ((_si > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRune.decodeLastRune((_b.__slice__((0 : stdgo.GoInt), _si) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _size1:stdgo.GoInt = __tmp__._1;
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRuneInString.decodeLastRuneInString((_s.__slice__((0 : stdgo.GoInt), _si) : stdgo.GoString)?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, _size2:stdgo.GoInt = __tmp__._1;
                if (_size1 != (_size2)) {
                    _t.errorf(("DecodeLastRune/DecodeLastRuneInString(%q, %d) size mismatch %d/%d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_size1), stdgo.Go.toInterface(_size2));
                    return;
                };
                if (_r1 != (_index[(_j : stdgo.GoInt)]._r)) {
                    _t.errorf(("DecodeLastRune(%q, %d) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_index[(_j : stdgo.GoInt)]._r));
                    return;
                };
                if (_r2 != (_index[(_j : stdgo.GoInt)]._r)) {
                    _t.errorf(("DecodeLastRuneInString(%q, %d) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_index[(_j : stdgo.GoInt)]._r));
                    return;
                };
                _si = (_si - (_size1) : stdgo.GoInt);
                if (_si != (_index[(_j : stdgo.GoInt)]._index)) {
                    _t.errorf(("DecodeLastRune(%q) index mismatch at %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_index[(_j : stdgo.GoInt)]._index));
                    return;
                };
                _j--;
            };
        };
        if (_si != ((0 : stdgo.GoInt))) {
            _t.errorf(("DecodeLastRune(%q) finished at %d, not 0" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si));
        };
    }
