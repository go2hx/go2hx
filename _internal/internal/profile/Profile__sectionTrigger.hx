package _internal.internal.profile;
function _sectionTrigger(_line:stdgo.GoString):_internal.internal.profile.Profile_T_sectionType.T_sectionType {
        for (__0 => _trigger in _internal.internal.profile.Profile__memoryMapTriggers._memoryMapTriggers) {
            if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), _trigger?.__copy__())) {
                return (1 : _internal.internal.profile.Profile_T_sectionType.T_sectionType);
            };
        };
        return (0 : _internal.internal.profile.Profile_T_sectionType.T_sectionType);
    }
