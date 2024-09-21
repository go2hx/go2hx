package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.T_directionalStatusStack_asInterface) class T_directionalStatusStack_static_extension {
    @:keep
    static public function _lastDirectionalIsolateStatus( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        return _s._isolateStatusStack[(_s._stackCounter - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    static public function _lastDirectionalOverrideStatus( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        return _s._overrideStatusStack[(_s._stackCounter - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    static public function _lastEmbeddingLevel( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        return _s._embeddingLevelStack[(_s._stackCounter - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    static public function _push( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>, _level:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level, _overrideStatus:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _isolateStatus:Bool):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        _s._embeddingLevelStack[(_s._stackCounter : stdgo.GoInt)] = _level;
        _s._overrideStatusStack[(_s._stackCounter : stdgo.GoInt)] = _overrideStatus;
        _s._isolateStatusStack[(_s._stackCounter : stdgo.GoInt)] = _isolateStatus;
        _s._stackCounter++;
    }
    @:keep
    static public function _depth( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        return _s._stackCounter;
    }
    @:keep
    static public function _pop( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        _s._stackCounter--;
    }
    @:keep
    static public function _empty( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack> = _s;
        _s._stackCounter = (0 : stdgo.GoInt);
    }
}
