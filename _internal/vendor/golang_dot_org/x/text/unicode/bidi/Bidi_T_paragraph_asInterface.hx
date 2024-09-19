package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class T_paragraph_asInterface {
    @:keep
    public dynamic function _getReordering(_linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._getReordering(_linebreaks);
    @:keep
    public dynamic function _getLevels(_linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level> return __self__.value._getLevels(_linebreaks);
    @:keep
    public dynamic function _assignLevelsToCharactersRemovedByX9():Void __self__.value._assignLevelsToCharactersRemovedByX9();
    @:keep
    public dynamic function _determineIsolatingRunSequences():stdgo.Slice<stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>> return __self__.value._determineIsolatingRunSequences();
    @:keep
    public dynamic function _determineLevelRuns():stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value._determineLevelRuns();
    @:keep
    public dynamic function _isolatingRunSequence(_indexes:stdgo.Slice<stdgo.GoInt>):stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> return __self__.value._isolatingRunSequence(_indexes);
    @:keep
    public dynamic function _determineExplicitEmbeddingLevels():Void __self__.value._determineExplicitEmbeddingLevels();
    @:keep
    public dynamic function _determineParagraphEmbeddingLevel(_start:stdgo.GoInt, _end:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level return __self__.value._determineParagraphEmbeddingLevel(_start, _end);
    @:keep
    public dynamic function _determineMatchingIsolates():Void __self__.value._determineMatchingIsolates();
    @:keep
    public dynamic function _run():Void __self__.value._run();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
