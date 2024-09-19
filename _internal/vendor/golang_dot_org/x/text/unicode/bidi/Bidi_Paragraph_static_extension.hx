package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.Paragraph_asInterface) class Paragraph_static_extension {
    @:keep
    static public function line( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>, _start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        var _lineTypes = (_p._types.__slice__(_start, _end) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__newParagraph._newParagraph(_lineTypes, (_p._pairTypes.__slice__(_start, _end) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>), (_p._pairValues.__slice__(_start, _end) : stdgo.Slice<stdgo.GoInt32>), (-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)), _para:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering), _1 : _err };
        };
        var _levels = _para._getLevels((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(_lineTypes.length)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        var _o = (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__calculateOrdering._calculateOrdering(_levels, (_p._runes.__slice__(_start, _end) : stdgo.Slice<stdgo.GoInt32>))?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering);
        return { _0 : _o?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function order( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>):{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        if ((_p._types.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering), _1 : (null : stdgo.Error) };
        };
        for (__0 => _fn in _p._opts) {
            _fn((stdgo.Go.setRef(_p._options) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_options.T_options>));
        };
        var _lvl = ((-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        if (_p._options._defaultDirection == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction))) {
            _lvl = (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__newParagraph._newParagraph(_p._types, _p._pairTypes, _p._pairValues, _lvl), _para:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering), _1 : _err };
        };
        var _levels = _para._getLevels((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(_p._types.length)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        _p._o = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__calculateOrdering._calculateOrdering(_levels, _p._runes)?.__copy__();
        return { _0 : _p._o?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function runAt( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>, _pos:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        var _c = (0 : stdgo.GoInt);
        var _runNumber = (0 : stdgo.GoInt);
        for (_i => _r in _p._o._runes) {
            _c = (_c + ((_r.length)) : stdgo.GoInt);
            if ((_pos < _c : Bool)) {
                _runNumber = _i;
            };
        };
        return _p._o.run(_runNumber)?.__copy__();
    }
    @:keep
    static public function direction( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        return _p._o.direction();
    }
    @:keep
    static public function isLeftToRight( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>):Bool {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        return _p.direction() == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction));
    }
    @:keep
    static public function setString( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>, _s:stdgo.GoString, _opts:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _opts = new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>(_opts.length, 0, ..._opts);
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._p = (_s : stdgo.Slice<stdgo.GoUInt8>);
        _p._opts = _opts;
        return _p._prepareInput();
    }
    @:keep
    static public function setBytes( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>, _b:stdgo.Slice<stdgo.GoUInt8>, _opts:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _opts = new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>(_opts.length, 0, ..._opts);
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._p = _b;
        _p._opts = _opts;
        return _p._prepareInput();
    }
    @:keep
    static public function _prepareInput( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._runes = stdgo._internal.bytes.Bytes_runes.runes(_p._p);
        var _bytecount = (0 : stdgo.GoInt);
        _p._pairTypes = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>);
        _p._pairValues = (null : stdgo.Slice<stdgo.GoInt32>);
        _p._types = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
        for (__0 => _r in _p._runes) {
            var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_lookupRune.lookupRune(_r), _props:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = __tmp__._0, _i:stdgo.GoInt = __tmp__._1;
            _bytecount = (_bytecount + (_i) : stdgo.GoInt);
            var _cls = (_props.class_() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
            if (_cls == ((7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return { _0 : _bytecount, _1 : (null : stdgo.Error) };
            };
            _p._types = (_p._types.__append__(_cls));
            if (_props.isOpeningBracket()) {
                _p._pairTypes = (_p._pairTypes.__append__((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType)));
                _p._pairValues = (_p._pairValues.__append__(_r));
            } else if (_props.isBracket()) {
                _p._pairTypes = (_p._pairTypes.__append__((2 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType)));
                _p._pairValues = (_p._pairValues.__append__(_r));
            } else {
                _p._pairTypes = (_p._pairTypes.__append__((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType)));
                _p._pairValues = (_p._pairValues.__append__((0 : stdgo.GoInt32)));
            };
        };
        return { _0 : _bytecount, _1 : (null : stdgo.Error) };
    }
}
