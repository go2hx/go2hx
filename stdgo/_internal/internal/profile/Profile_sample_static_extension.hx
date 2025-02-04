package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Sample_asInterface) class Sample_static_extension {
    @:keep
    @:tdfield
    static public function _key( _sample:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey {
        @:recv var _sample:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = _sample;
        var _ids = (new stdgo.Slice<stdgo.GoString>(((@:checkr _sample ?? throw "null pointer dereference").location.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _l in (@:checkr _sample ?? throw "null pointer dereference").location) {
            _ids[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatuint.formatUint((@:checkr _l ?? throw "null pointer dereference").iD, (16 : stdgo.GoInt))?.__copy__();
        };
        var _labels = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _sample ?? throw "null pointer dereference").label.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _v in (@:checkr _sample ?? throw "null pointer dereference").label) {
            _labels = (_labels.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q%q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_labels);
        var _numlabels = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _sample ?? throw "null pointer dereference").numLabel.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _v in (@:checkr _sample ?? throw "null pointer dereference").numLabel) {
            _numlabels = (_numlabels.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q%x%x" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(((@:checkr _sample ?? throw "null pointer dereference").numUnit[_k] ?? (null : stdgo.Slice<stdgo.GoString>))))?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_numlabels);
        return (new stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey(stdgo._internal.strings.Strings_join.join(_ids, ("|" : stdgo.GoString))?.__copy__(), stdgo._internal.strings.Strings_join.join(_labels, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__(), stdgo._internal.strings.Strings_join.join(_numlabels, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__()) : stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey);
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = _p;
        stdgo._internal.internal.profile.Profile__encodeuint64s._encodeUint64s(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._locationIDX);
        for (__0 => _x in (@:checkr _p ?? throw "null pointer dereference").value) {
            stdgo._internal.internal.profile.Profile__encodeint64._encodeInt64(_b, (2 : stdgo.GoInt), _x);
        };
        for (__1 => _x in (@:checkr _p ?? throw "null pointer dereference")._labelX) {
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (3 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = _p;
        return stdgo._internal.internal.profile.Profile__sampledecoder._sampleDecoder;
    }
}
