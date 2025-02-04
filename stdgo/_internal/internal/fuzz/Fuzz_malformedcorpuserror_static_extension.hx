package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.MalformedCorpusError_asInterface) class MalformedCorpusError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError> = _e;
        var _msgs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__8 => _s in (@:checkr _e ?? throw "null pointer dereference")._errs) {
            _msgs = (_msgs.__append__(_s.error()?.__copy__()));
        };
        return stdgo._internal.strings.Strings_join.join(_msgs, ("\n" : stdgo.GoString))?.__copy__();
    }
}
