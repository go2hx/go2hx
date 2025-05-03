package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Sample_asInterface) class Sample_static_extension {
    @:keep
    @:tdfield
    static public function _key( _sample:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey {
        @:recv var _sample:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = _sample;
        var _ids = (new stdgo.Slice<stdgo.GoString>(((@:checkr _sample ?? throw "null pointer dereference").location.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L178"
        for (_i => _l in (@:checkr _sample ?? throw "null pointer dereference").location) {
            _ids[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatuint.formatUint((@:checkr _l ?? throw "null pointer dereference").iD, (16 : stdgo.GoInt))?.__copy__();
        };
        var _labels = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _sample ?? throw "null pointer dereference").label.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L183"
        for (_k => _v in (@:checkr _sample ?? throw "null pointer dereference").label) {
            _labels = (_labels.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q%q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L186"
        stdgo._internal.sort.Sort_strings.strings(_labels);
        var _numlabels = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _sample ?? throw "null pointer dereference").numLabel.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L189"
        for (_k => _v in (@:checkr _sample ?? throw "null pointer dereference").numLabel) {
            _numlabels = (_numlabels.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q%x%x" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(((@:checkr _sample ?? throw "null pointer dereference").numUnit[_k] ?? (null : stdgo.Slice<stdgo.GoString>))))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L192"
        stdgo._internal.sort.Sort_strings.strings(_numlabels);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L194"
        return (new stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey(stdgo._internal.strings.Strings_join.join(_ids, ("|" : stdgo.GoString))?.__copy__(), stdgo._internal.strings.Strings_join.join(_labels, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__(), stdgo._internal.strings.Strings_join.join(_numlabels, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__()) : stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey);
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L319"
        stdgo._internal.internal.profile.Profile__encodeuint64s._encodeUint64s(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._locationIDX);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L320"
        for (__0 => _x in (@:checkr _p ?? throw "null pointer dereference").value) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L321"
            stdgo._internal.internal.profile.Profile__encodeint64._encodeInt64(_b, (2 : stdgo.GoInt), _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L323"
        for (__1 => _x in (@:checkr _p ?? throw "null pointer dereference")._labelX) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L324"
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (3 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L315"
        return stdgo._internal.internal.profile.Profile__sampledecoder._sampleDecoder;
    }
}
