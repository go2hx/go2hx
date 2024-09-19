package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Sample_asInterface) class Sample_static_extension {
    @:keep
    static public function _key( _sample:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>):_internal.internal.profile.Profile_T_sampleKey.T_sampleKey {
        @:recv var _sample:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample> = _sample;
        var _ids = (new stdgo.Slice<stdgo.GoString>((_sample.location.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _l in _sample.location) {
            _ids[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatUint.formatUint(_l.id, (16 : stdgo.GoInt))?.__copy__();
        };
        var _labels = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_sample.label.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _v in _sample.label) {
            _labels = (_labels.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q%q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_labels);
        var _numlabels = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_sample.numLabel.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _v in _sample.numLabel) {
            _numlabels = (_numlabels.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q%x%x" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((_sample.numUnit[_k] ?? (null : stdgo.Slice<stdgo.GoString>))))?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_numlabels);
        return (new _internal.internal.profile.Profile_T_sampleKey.T_sampleKey(stdgo._internal.strings.Strings_join.join(_ids, ("|" : stdgo.GoString))?.__copy__(), stdgo._internal.strings.Strings_join.join(_labels, stdgo.Go.str()?.__copy__())?.__copy__(), stdgo._internal.strings.Strings_join.join(_numlabels, stdgo.Go.str()?.__copy__())?.__copy__()) : _internal.internal.profile.Profile_T_sampleKey.T_sampleKey);
    }
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample> = _p;
        _internal.internal.profile.Profile__encodeUint64s._encodeUint64s(_b, (1 : stdgo.GoInt), _p._locationIDX);
        for (__0 => _x in _p.value) {
            _internal.internal.profile.Profile__encodeInt64._encodeInt64(_b, (2 : stdgo.GoInt), _x);
        };
        for (__1 => _x in _p._labelX) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (3 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample> = _p;
        return _internal.internal.profile.Profile__sampleDecoder._sampleDecoder;
    }
}
