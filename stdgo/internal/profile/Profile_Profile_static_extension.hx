package stdgo.internal.profile;
class Profile_static_extension {
    static public function removeUninteresting(_p:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.removeUninteresting(_p);
    }
    static public function prune(_p:Profile_, _dropRx:stdgo._internal.regexp.Regexp_Regexp.Regexp, _keepRx:stdgo._internal.regexp.Regexp_Regexp.Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _dropRx = (_dropRx : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _keepRx = (_keepRx : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.prune(_p, _dropRx, _keepRx);
    }
    static public function scaleN(_p:Profile_, _ratios:Array<StdTypes.Float>):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _ratios = ([for (i in _ratios) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.scaleN(_p, _ratios);
    }
    static public function scale(_p:Profile_, _ratio:StdTypes.Float):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _ratio = (_ratio : stdgo.GoFloat64);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.scale(_p, _ratio);
    }
    static public function empty(_p:Profile_):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.empty(_p);
    }
    static public function demangle(_p:Profile_, _d:Demangler):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.demangle(_p, _d);
    }
    static public function copy(_p:Profile_):Profile_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.copy(_p);
    }
    static public function hasFileLines(_p:Profile_):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.hasFileLines(_p);
    }
    static public function hasFunctions(_p:Profile_):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.hasFunctions(_p);
    }
    static public function compatible(_p:Profile_, _pb:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.compatible(_p, _pb);
    }
    static public function merge(_p:Profile_, _pb:Profile_, _r:StdTypes.Float):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _r = (_r : stdgo.GoFloat64);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.merge(_p, _pb, _r);
    }
    static public function string(_p:Profile_):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.string(_p);
    }
    static public function aggregate(_p:Profile_, _inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.aggregate(_p, _inlineFrame, _function, _filename, _linenumber, _address);
    }
    static public function checkValid(_p:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.checkValid(_p);
    }
    static public function write(_p:Profile_, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.write(_p, _w);
    }
    static public function _setMain(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._setMain(_p);
    }
    static public function _compatible(_p:Profile_, _pb:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._compatible(_p, _pb);
    }
    static public function normalize(_p:Profile_, _pb:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.normalize(_p, _pb);
    }
    static public function _addLegacyFrameInfo(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._addLegacyFrameInfo(_p);
    }
    static public function parseMemoryMap(_p:Profile_, _rd:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.parseMemoryMap(_p, _rd);
    }
    static public function _remapMappingIDs(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._remapMappingIDs(_p);
    }
    static public function _remapFunctionIDs(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._remapFunctionIDs(_p);
    }
    static public function _remapLocationIDs(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._remapLocationIDs(_p);
    }
    static public function filterSamplesByTag(_p:Profile_, _focus:TagMatch, _ignore:TagMatch):stdgo.Tuple<Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.filterSamplesByTag(_p, _focus, _ignore);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function filterSamplesByName(_p:Profile_, _focus:stdgo._internal.regexp.Regexp_Regexp.Regexp, _ignore:stdgo._internal.regexp.Regexp_Regexp.Regexp, _hide:stdgo._internal.regexp.Regexp_Regexp.Regexp):stdgo.Tuple.Tuple3<Bool, Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _focus = (_focus : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _ignore = (_ignore : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _hide = (_hide : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension.filterSamplesByName(_p, _focus, _ignore, _hide);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _postDecode(_p:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._postDecode(_p);
    }
    static public function _encode(_p:Profile_, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._encode(_p, _b);
    }
    static public function _preEncode(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._preEncode(_p);
    }
    static public function _decoder(_p:Profile_):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return [for (i in stdgo._internal.internal.profile.Profile_Profile_static_extension.Profile_static_extension._decoder(_p)) i];
    }
}
