package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.MalformedCorpusError_asInterface) class MalformedCorpusError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError> = _e;
        var _msgs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__8 => _s in _e._errs) {
            _msgs = (_msgs.__append__(_s.error()?.__copy__()));
        };
        return stdgo._internal.strings.Strings_join.join(_msgs, ("\n" : stdgo.GoString))?.__copy__();
    }
}
