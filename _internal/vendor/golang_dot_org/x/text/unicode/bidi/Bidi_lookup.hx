package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function lookup(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties; var _1 : stdgo.GoInt; } {
        var _p = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _sz = (0 : stdgo.GoInt);
        var _c0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            return { _0 : ({ _entry : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiValues._bidiValues[(_c0 : stdgo.GoInt)] } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiIndex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
            };
            return { _0 : ({ _entry : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__trie._trie._lookupValue((_i : stdgo.GoUInt32), _c1) } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (2 : stdgo.GoInt) };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiIndex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
            };
            var _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiIndex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
            };
            return { _0 : ({ _entry : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__trie._trie._lookupValue((_i : stdgo.GoUInt32), _c2), _last : _c2 } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (3 : stdgo.GoInt) };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiIndex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
            };
            var _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiIndex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__bidiIndex._bidiIndex[(_o : stdgo.GoInt)];
            var _c3 = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
            };
            return { _0 : ({ _entry : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__trie._trie._lookupValue((_i : stdgo.GoUInt32), _c3) } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (4 : stdgo.GoInt) };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _1 : (1 : stdgo.GoInt) };
    }
