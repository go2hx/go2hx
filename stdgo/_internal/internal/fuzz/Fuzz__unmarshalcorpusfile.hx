package stdgo._internal.internal.fuzz;
function _unmarshalCorpusFile(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.AnyInterface>; var _1 : stdgo.Error; } {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot unmarshal empty string" : stdgo.GoString)) };
        };
        var _lines = stdgo._internal.bytes.Bytes_split.split(_b, ((("\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        if (((_lines.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("must include version and at least one value" : stdgo.GoString)) };
        };
        var _version = (stdgo._internal.strings.Strings_trimsuffix.trimSuffix((_lines[(0 : stdgo.GoInt)] : stdgo.GoString)?.__copy__(), ("\r" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_version != (stdgo._internal.internal.fuzz.Fuzz__encversion1._encVersion1)) {
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown encoding version: %s" : stdgo.GoString), stdgo.Go.toInterface(_version)) };
        };
        var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _line in (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
            if ((_line.length) == ((0 : stdgo.GoInt))) {
                continue;
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parsecorpusvalue._parseCorpusValue(_line), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed line %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
            };
            _vals = (_vals.__append__(_v));
        };
        return { _0 : _vals, _1 : (null : stdgo.Error) };
    }
