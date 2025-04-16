package stdgo.internal.profile;
var legacyHeapAllocated(get, set) : Bool;
private function get_legacyHeapAllocated():Bool return stdgo._internal.internal.profile.Profile_legacyheapallocated.legacyHeapAllocated;
private function set_legacyHeapAllocated(v:Bool):Bool {
        stdgo._internal.internal.profile.Profile_legacyheapallocated.legacyHeapAllocated = v;
        return v;
    }
typedef Profile_ = stdgo._internal.internal.profile.Profile_profile.Profile;
typedef ValueType_ = stdgo._internal.internal.profile.Profile_valuetype_.ValueType_;
typedef Sample = stdgo._internal.internal.profile.Profile_sample.Sample;
typedef Label = stdgo._internal.internal.profile.Profile_label.Label;
typedef Mapping = stdgo._internal.internal.profile.Profile_mapping.Mapping;
typedef Location = stdgo._internal.internal.profile.Profile_location.Location;
typedef Line = stdgo._internal.internal.profile.Profile_line.Line;
typedef Function = stdgo._internal.internal.profile.Profile_function.Function;
typedef TagMatch = stdgo._internal.internal.profile.Profile_tagmatch.TagMatch;
typedef Demangler = stdgo._internal.internal.profile.Profile_demangler.Demangler;
typedef ProfilePointer = stdgo._internal.internal.profile.Profile_profilepointer.ProfilePointer;
typedef ValueType_Pointer = stdgo._internal.internal.profile.Profile_valuetype_pointer.ValueType_Pointer;
typedef SamplePointer = stdgo._internal.internal.profile.Profile_samplepointer.SamplePointer;
typedef LabelPointer = stdgo._internal.internal.profile.Profile_labelpointer.LabelPointer;
typedef MappingPointer = stdgo._internal.internal.profile.Profile_mappingpointer.MappingPointer;
typedef LocationPointer = stdgo._internal.internal.profile.Profile_locationpointer.LocationPointer;
typedef LinePointer = stdgo._internal.internal.profile.Profile_linepointer.LinePointer;
typedef FunctionPointer = stdgo._internal.internal.profile.Profile_functionpointer.FunctionPointer;
typedef TagMatchPointer = stdgo._internal.internal.profile.Profile_tagmatchpointer.TagMatchPointer;
typedef DemanglerPointer = stdgo._internal.internal.profile.Profile_demanglerpointer.DemanglerPointer;
/**
    * Package profile provides a representation of
    * github.com/google/pprof/proto/profile.proto and
    * methods to encode/decode/merge profiles in this format.
**/
class Profile {
    /**
        * ParseTracebacks parses a set of tracebacks and returns a newly
        * populated profile. It will accept any text file and generate a
        * Profile out of it with any hex addresses it can identify, including
        * a process map if it can recognize one. Each sample will include a
        * tag "source" with the addresses recognized in string format.
    **/
    static public inline function parseTracebacks(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } return stdgo._internal.internal.profile.Profile_parsetracebacks.parseTracebacks(_b);
    /**
        * Merge merges all the profiles in profs into a single Profile.
        * Returns a new profile independent of the input profiles. The merged
        * profile is compacted to eliminate unused samples, locations,
        * functions and mappings. Profiles must have identical profile sample
        * and period types or the merge will fail. profile.Period of the
        * resulting profile will be the maximum of all profiles, and
        * profile.TimeNanos will be the earliest nonzero one.
    **/
    static public inline function merge(_srcs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } return stdgo._internal.internal.profile.Profile_merge.merge(_srcs);
    /**
        * Parse parses a profile and checks for its validity. The input
        * may be a gzip-compressed encoded protobuf or one of many legacy
        * profile formats which may be unsupported in the future.
    **/
    static public inline function parse(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } return stdgo._internal.internal.profile.Profile_parse.parse(_r);
}
