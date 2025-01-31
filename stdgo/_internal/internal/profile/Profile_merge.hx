package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function merge(_srcs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        if ((_srcs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("no profiles to merge" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.internal.profile.Profile__combineHeaders._combineHeaders(_srcs), _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _pm = (stdgo.Go.setRef(({ _p : _p, _samples : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_locations", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_labels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_numlabels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>), _locations : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_mappingID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_lines", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_isFolded", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>), _functions : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_startLine", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_systemName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_fileName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>), _mappings : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_buildIDOrFile", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>) } : stdgo._internal.internal.profile.Profile_T_profileMerger.T_profileMerger)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_profileMerger.T_profileMerger>);
        for (__0 => _src in _srcs) {
            (@:checkr _pm ?? throw "null pointer dereference")._locationsByID = (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
            (@:checkr _pm ?? throw "null pointer dereference")._functionsByID = (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>);
            (@:checkr _pm ?? throw "null pointer dereference")._mappingsByID = (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>();
                x.__defaultValue__ = () -> ({} : stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>) : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>);
            if ((((@:checkr _pm ?? throw "null pointer dereference")._mappings.length == (0 : stdgo.GoInt)) && (((@:checkr _src ?? throw "null pointer dereference").mapping.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _pm._mapMapping((@:checkr _src ?? throw "null pointer dereference").mapping[(0 : stdgo.GoInt)]);
            };
            for (__1 => _s in (@:checkr _src ?? throw "null pointer dereference").sample) {
                if (!stdgo._internal.internal.profile.Profile__isZeroSample._isZeroSample(_s)) {
                    @:check2r _pm._mapSample(_s);
                };
            };
        };
        for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            if (stdgo._internal.internal.profile.Profile__isZeroSample._isZeroSample(_s)) {
                return stdgo._internal.internal.profile.Profile_merge.merge((new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>>(1, 1, ...[_p]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>>));
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
