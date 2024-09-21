package _internal.internal.profile;
class Profile_asInterface {
    @:keep
    public dynamic function removeUninteresting():stdgo.Error return __self__.value.removeUninteresting();
    @:keep
    public dynamic function prune(_dropRx:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _keepRx:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Void __self__.value.prune(_dropRx, _keepRx);
    @:keep
    public dynamic function scaleN(_ratios:stdgo.Slice<stdgo.GoFloat64>):stdgo.Error return __self__.value.scaleN(_ratios);
    @:keep
    public dynamic function scale(_ratio:stdgo.GoFloat64):Void __self__.value.scale(_ratio);
    @:keep
    public dynamic function empty():Bool return __self__.value.empty();
    @:keep
    public dynamic function demangle(_d:_internal.internal.profile.Profile_Demangler.Demangler):stdgo.Error return __self__.value.demangle(_d);
    @:keep
    public dynamic function copy():stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> return __self__.value.copy();
    @:keep
    public dynamic function hasFileLines():Bool return __self__.value.hasFileLines();
    @:keep
    public dynamic function hasFunctions():Bool return __self__.value.hasFunctions();
    @:keep
    public dynamic function compatible(_pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error return __self__.value.compatible(_pb);
    @:keep
    public dynamic function merge(_pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _r:stdgo.GoFloat64):stdgo.Error return __self__.value.merge(_pb, _r);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function aggregate(_inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):stdgo.Error return __self__.value.aggregate(_inlineFrame, _function, _filename, _linenumber, _address);
    @:keep
    public dynamic function checkValid():stdgo.Error return __self__.value.checkValid();
    @:keep
    public dynamic function write(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.write(_w);
    @:keep
    public dynamic function _setMain():Void __self__.value._setMain();
    @:keep
    public dynamic function _compatible(_pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error return __self__.value._compatible(_pb);
    @:keep
    public dynamic function normalize(_pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error return __self__.value.normalize(_pb);
    @:keep
    public dynamic function _addLegacyFrameInfo():Void __self__.value._addLegacyFrameInfo();
    @:keep
    public dynamic function parseMemoryMap(_rd:stdgo._internal.io.Io_Reader.Reader):stdgo.Error return __self__.value.parseMemoryMap(_rd);
    @:keep
    public dynamic function _remapMappingIDs():Void __self__.value._remapMappingIDs();
    @:keep
    public dynamic function _remapFunctionIDs():Void __self__.value._remapFunctionIDs();
    @:keep
    public dynamic function _remapLocationIDs():Void __self__.value._remapLocationIDs();
    @:keep
    public dynamic function filterSamplesByTag(_focus:_internal.internal.profile.Profile_TagMatch.TagMatch, _ignore:_internal.internal.profile.Profile_TagMatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } return __self__.value.filterSamplesByTag(_focus, _ignore);
    @:keep
    public dynamic function filterSamplesByName(_focus:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _ignore:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _hide:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; } return __self__.value.filterSamplesByName(_focus, _ignore, _hide);
    @:keep
    public dynamic function _postDecode():stdgo.Error return __self__.value._postDecode();
    @:keep
    public dynamic function _encode(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void __self__.value._encode(_b);
    @:keep
    public dynamic function _preEncode():Void __self__.value._preEncode();
    @:keep
    public dynamic function _decoder():stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> return __self__.value._decoder();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.internal.profile.Profile_Profile.Profile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
