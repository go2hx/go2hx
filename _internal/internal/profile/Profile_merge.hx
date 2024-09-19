package _internal.internal.profile;
function merge(_srcs:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        if ((_srcs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no profiles to merge" : stdgo.GoString)) };
        };
        var __tmp__ = _internal.internal.profile.Profile__combineHeaders._combineHeaders(_srcs), _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _pm = (stdgo.Go.setRef(({ _p : _p, _samples : ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.internal.profile.Profile_T_sampleKey.T_sampleKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_locations", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_labels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_numlabels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>);
            {};
            cast x;
        } : stdgo.GoMap<_internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>), _locations : ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.internal.profile.Profile_T_locationKey.T_locationKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_mappingID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_lines", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_isFolded", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            cast x;
        } : stdgo.GoMap<_internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>), _functions : ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.internal.profile.Profile_T_functionKey.T_functionKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_startLine", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_systemName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_fileName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>);
            {};
            cast x;
        } : stdgo.GoMap<_internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>), _mappings : ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.internal.profile.Profile_T_mappingKey.T_mappingKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_buildIDOrFile", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
            {};
            cast x;
        } : stdgo.GoMap<_internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>) } : _internal.internal.profile.Profile_T_profileMerger.T_profileMerger)) : stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>);
        for (__0 => _src in _srcs) {
            _pm._locationsByID = ({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
            _pm._functionsByID = ({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>);
            _pm._mappingsByID = ({
                final x = new stdgo.GoMap.GoUInt64Map<_internal.internal.profile.Profile_T_mapInfo.T_mapInfo>();
                x.__defaultValue__ = () -> ({} : _internal.internal.profile.Profile_T_mapInfo.T_mapInfo);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, _internal.internal.profile.Profile_T_mapInfo.T_mapInfo>);
            if (((_pm._mappings.length == (0 : stdgo.GoInt)) && ((_src.mapping.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _pm._mapMapping(_src.mapping[(0 : stdgo.GoInt)]);
            };
            for (__1 => _s in _src.sample) {
                if (!_internal.internal.profile.Profile__isZeroSample._isZeroSample(_s)) {
                    _pm._mapSample(_s);
                };
            };
        };
        for (__1 => _s in _p.sample) {
            if (_internal.internal.profile.Profile__isZeroSample._isZeroSample(_s)) {
                return _internal.internal.profile.Profile_merge.merge((new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>>(1, 1, ...[_p]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>>));
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
