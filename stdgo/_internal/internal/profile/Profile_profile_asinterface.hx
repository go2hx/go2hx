package stdgo._internal.internal.profile;
class Profile_asInterface {
    @:keep
    @:tdfield
    public dynamic function removeUninteresting():stdgo.Error return @:_0 __self__.value.removeUninteresting();
    @:keep
    @:tdfield
    public dynamic function prune(_dropRx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _keepRx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Void @:_0 __self__.value.prune(_dropRx, _keepRx);
    @:keep
    @:tdfield
    public dynamic function scaleN(_ratios:stdgo.Slice<stdgo.GoFloat64>):stdgo.Error return @:_0 __self__.value.scaleN(_ratios);
    @:keep
    @:tdfield
    public dynamic function scale(_ratio:stdgo.GoFloat64):Void @:_0 __self__.value.scale(_ratio);
    @:keep
    @:tdfield
    public dynamic function empty():Bool return @:_0 __self__.value.empty();
    @:keep
    @:tdfield
    public dynamic function demangle(_d:stdgo._internal.internal.profile.Profile_demangler.Demangler):stdgo.Error return @:_0 __self__.value.demangle(_d);
    @:keep
    @:tdfield
    public dynamic function copy():stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> return @:_0 __self__.value.copy();
    @:keep
    @:tdfield
    public dynamic function hasFileLines():Bool return @:_0 __self__.value.hasFileLines();
    @:keep
    @:tdfield
    public dynamic function hasFunctions():Bool return @:_0 __self__.value.hasFunctions();
    @:keep
    @:tdfield
    public dynamic function compatible(_pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error return @:_0 __self__.value.compatible(_pb);
    @:keep
    @:tdfield
    public dynamic function merge(_pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _r:stdgo.GoFloat64):stdgo.Error return @:_0 __self__.value.merge(_pb, _r);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function aggregate(_inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):stdgo.Error return @:_0 __self__.value.aggregate(_inlineFrame, _function, _filename, _linenumber, _address);
    @:keep
    @:tdfield
    public dynamic function checkValid():stdgo.Error return @:_0 __self__.value.checkValid();
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    @:tdfield
    public dynamic function _setMain():Void @:_0 __self__.value._setMain();
    @:keep
    @:tdfield
    public dynamic function _compatible(_pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error return @:_0 __self__.value._compatible(_pb);
    @:keep
    @:tdfield
    public dynamic function normalize(_pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error return @:_0 __self__.value.normalize(_pb);
    @:keep
    @:tdfield
    public dynamic function _addLegacyFrameInfo():Void @:_0 __self__.value._addLegacyFrameInfo();
    @:keep
    @:tdfield
    public dynamic function parseMemoryMap(_rd:stdgo._internal.io.Io_reader.Reader):stdgo.Error return @:_0 __self__.value.parseMemoryMap(_rd);
    @:keep
    @:tdfield
    public dynamic function _remapMappingIDs():Void @:_0 __self__.value._remapMappingIDs();
    @:keep
    @:tdfield
    public dynamic function _remapFunctionIDs():Void @:_0 __self__.value._remapFunctionIDs();
    @:keep
    @:tdfield
    public dynamic function _remapLocationIDs():Void @:_0 __self__.value._remapLocationIDs();
    @:keep
    @:tdfield
    public dynamic function filterSamplesByTag(_focus:stdgo._internal.internal.profile.Profile_tagmatch.TagMatch, _ignore:stdgo._internal.internal.profile.Profile_tagmatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value.filterSamplesByTag(_focus, _ignore);
    @:keep
    @:tdfield
    public dynamic function filterSamplesByName(_focus:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ignore:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _hide:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; } return @:_0 __self__.value.filterSamplesByName(_focus, _ignore, _hide);
    @:keep
    @:tdfield
    public dynamic function _postDecode():stdgo.Error return @:_0 __self__.value._postDecode();
    @:keep
    @:tdfield
    public dynamic function _encode(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void @:_0 __self__.value._encode(_b);
    @:keep
    @:tdfield
    public dynamic function _preEncode():Void @:_0 __self__.value._preEncode();
    @:keep
    @:tdfield
    public dynamic function _decoder():stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> return @:_0 __self__.value._decoder();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.profile.Profile_profilepointer.ProfilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
