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
@:keep class T_message_static_extension {
    @:interfacetypeffun
    static public function _encode(t:stdgo._internal.internal.profile.Profile_T_message.T_message, _0:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void t._encode(_0);
    @:interfacetypeffun
    static public function _decoder(t:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> return t._decoder();
}
