package stdgo._internal.internal.profile;
function _sectionTrigger(_line:stdgo.GoString):stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType {
        for (__0 => _trigger in stdgo._internal.internal.profile.Profile__memorymaptriggers._memoryMapTriggers) {
            if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), _trigger?.__copy__())) {
                return (1 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType);
            };
        };
        return (0 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType);
    }
