package stdgo._internal.internal.profile;
function _parseAdditionalSections(_l:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        var _err = (null : stdgo.Error);
        while (true) {
            if (stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_l?.__copy__()) == ((1 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType))) {
                break;
            };
            {
                var __tmp__ = @:check2r _b.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        return _err;
                    };
                    if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                        break;
                    };
                };
            };
        };
        return _err = @:check2r _p.parseMemoryMap(stdgo.Go.asInterface(_b));
    }
