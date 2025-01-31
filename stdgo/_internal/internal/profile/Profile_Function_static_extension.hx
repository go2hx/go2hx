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
@:keep @:allow(stdgo._internal.internal.profile.Profile.Function_asInterface) class Function_static_extension {
    @:keep
    @:tdfield
    static public function _key( _f:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>):stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function> = _f;
        return (new stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey((@:checkr _f ?? throw "null pointer dereference").startLine, (@:checkr _f ?? throw "null pointer dereference").name?.__copy__(), (@:checkr _f ?? throw "null pointer dereference").systemName?.__copy__(), (@:checkr _f ?? throw "null pointer dereference").filename?.__copy__()) : stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey);
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function> = _p;
        stdgo._internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").iD);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._nameX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._systemNameX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (4 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._filenameX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (5 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").startLine);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function> = _p;
        return stdgo._internal.internal.profile.Profile__functionDecoder._functionDecoder;
    }
}
