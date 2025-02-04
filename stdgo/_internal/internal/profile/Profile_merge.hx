package stdgo._internal.internal.profile;
function merge(_srcs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        if ((_srcs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no profiles to merge" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.internal.profile.Profile__combineheaders._combineHeaders(_srcs), _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _pm = (stdgo.Go.setRef(({ _p : _p, _samples : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_locations", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_labels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_numlabels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>), _locations : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_mappingID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_lines", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_isFolded", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>), _functions : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_startLine", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_systemName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_fileName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>), _mappings : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_buildIDOrFile", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>) } : stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>);
        for (__0 => _src in _srcs) {
            (@:checkr _pm ?? throw "null pointer dereference")._locationsByID = (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
            (@:checkr _pm ?? throw "null pointer dereference")._functionsByID = (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
            (@:checkr _pm ?? throw "null pointer dereference")._mappingsByID = (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>();
                x.__defaultValue__ = () -> ({} : stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>) : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>);
            if ((((@:checkr _pm ?? throw "null pointer dereference")._mappings.length == (0 : stdgo.GoInt)) && (((@:checkr _src ?? throw "null pointer dereference").mapping.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _pm._mapMapping((@:checkr _src ?? throw "null pointer dereference").mapping[(0 : stdgo.GoInt)]);
            };
            for (__1 => _s in (@:checkr _src ?? throw "null pointer dereference").sample) {
                if (!stdgo._internal.internal.profile.Profile__iszerosample._isZeroSample(_s)) {
                    @:check2r _pm._mapSample(_s);
                };
            };
        };
        for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            if (stdgo._internal.internal.profile.Profile__iszerosample._isZeroSample(_s)) {
                return stdgo._internal.internal.profile.Profile_merge.merge((new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>(1, 1, ...[_p]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>));
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
