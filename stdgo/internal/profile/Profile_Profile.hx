package stdgo.internal.profile;
/**
    Package profile provides a representation of
    github.com/google/pprof/proto/profile.proto and
    methods to encode/decode/merge profiles in this format.
**/
class Profile {
    /**
        ParseTracebacks parses a set of tracebacks and returns a newly
        populated profile. It will accept any text file and generate a
        Profile out of it with any hex addresses it can identify, including
        a process map if it can recognize one. Each sample will include a
        tag "source" with the addresses recognized in string format.
    **/
    static public inline function parseTracebacks(_b:Array<std.UInt>):stdgo.Tuple<Profile_, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_parseTracebacks.parseTracebacks(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Merge merges all the profiles in profs into a single Profile.
        Returns a new profile independent of the input profiles. The merged
        profile is compacted to eliminate unused samples, locations,
        functions and mappings. Profiles must have identical profile sample
        and period types or the merge will fail. profile.Period of the
        resulting profile will be the maximum of all profiles, and
        profile.TimeNanos will be the earliest nonzero one.
    **/
    static public inline function merge(_srcs:Array<Profile_>):stdgo.Tuple<Profile_, stdgo.Error> {
        final _srcs = ([for (i in _srcs) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_merge.merge(_srcs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Parse parses a profile and checks for its validity. The input
        may be a gzip-compressed encoded protobuf or one of many legacy
        profile formats which may be unsupported in the future.
    **/
    static public inline function parse(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Profile_, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.profile.Profile_parse.parse(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
