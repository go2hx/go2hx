package stdgo._internal.internal.profile;
function _parseAdditionalSections(_l:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        var _err = (null : stdgo.Error);
        while (true) {
            if (stdgo._internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_l?.__copy__()) == ((1 : stdgo._internal.internal.profile.Profile_T_sectionType.T_sectionType))) {
                break;
            };
            {
                var __tmp__ = @:check2r _b.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        return _err;
                    };
                    if (_l == (stdgo.Go.str())) {
                        break;
                    };
                };
            };
        };
        return _err = @:check2r _p.parseMemoryMap(stdgo.Go.asInterface(_b));
    }
