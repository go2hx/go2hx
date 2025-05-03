package stdgo._internal.internal.profile;
function _parseAdditionalSections(_l:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1004"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1005"
            if (stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_l?.__copy__()) == ((1 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1006"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1009"
            {
                var __tmp__ = _b.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1010"
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1011"
                        return _err;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1013"
                    if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1014"
                        break;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1018"
        return _err = _p.parseMemoryMap(stdgo.Go.asInterface(_b));
    }
