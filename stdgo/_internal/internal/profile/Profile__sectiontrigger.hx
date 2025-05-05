package stdgo._internal.internal.profile;
function _sectionTrigger(_line:stdgo.GoString):stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1138"
        for (__0 => _trigger in stdgo._internal.internal.profile.Profile__memorymaptriggers._memoryMapTriggers) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1139"
            if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), _trigger?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1140"
                return (1 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1143"
        return (0 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType);
    }
