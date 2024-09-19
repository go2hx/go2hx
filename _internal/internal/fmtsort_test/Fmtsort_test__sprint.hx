package _internal.internal.fmtsort_test;
function _sprint(_data:stdgo.AnyInterface):stdgo.GoString {
        var _om = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(stdgo._internal.reflect.Reflect_valueOf.valueOf(_data)?.__copy__());
        if (_om == null || (_om : Dynamic).__nil__) {
            return ("nil" : stdgo.GoString);
        };
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        for (_i => _key in _om.key) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _b.writeRune((32 : stdgo.GoInt32));
            };
            _b.writeString(_internal.internal.fmtsort_test.Fmtsort_test__sprintKey._sprintKey(_key?.__copy__())?.__copy__());
            _b.writeRune((58 : stdgo.GoInt32));
            stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_om.value[(_i : stdgo.GoInt)])));
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
