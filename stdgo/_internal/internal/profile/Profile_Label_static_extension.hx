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
@:keep @:allow(stdgo._internal.internal.profile.Profile.Label_asInterface) class Label_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo._internal.internal.profile.Profile_Label.Label, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo._internal.internal.profile.Profile_Label.Label = _p?.__copy__();
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), _p._keyX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p._strX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), _p._numX);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo._internal.internal.profile.Profile_Label.Label):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo._internal.internal.profile.Profile_Label.Label = _p?.__copy__();
        return stdgo._internal.internal.profile.Profile__labelDecoder._labelDecoder;
    }
}
