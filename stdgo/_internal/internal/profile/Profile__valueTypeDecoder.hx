package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
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
var _valueTypeDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>(3, 3, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>) ?? throw "null pointer dereference")._typeX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>) ?? throw "null pointer dereference")._unitX));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>);
