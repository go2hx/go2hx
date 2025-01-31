package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((((@:checkr _d ?? throw "null pointer dereference")._in.length) < (2 : stdgo.GoInt) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._err == null) : Bool)) {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _numRead = __1, _numCopy = __0;
            _numCopy = ((@:checkr _d ?? throw "null pointer dereference")._arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _d ?? throw "null pointer dereference")._in);
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.read(((@:checkr _d ?? throw "null pointer dereference")._arr.__slice__(_numCopy) : stdgo.Slice<stdgo.GoUInt8>));
                _numRead = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _d ?? throw "null pointer dereference")._in = ((@:checkr _d ?? throw "null pointer dereference")._arr.__slice__(0, (_numCopy + _numRead : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) && ((((@:checkr _d ?? throw "null pointer dereference")._in.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var _a = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[((@:checkr _d ?? throw "null pointer dereference")._in[(((@:checkr _d ?? throw "null pointer dereference")._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                        (@:checkr _d ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _d ?? throw "null pointer dereference")._in[(((@:checkr _d ?? throw "null pointer dereference")._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError));
                    } else {
                        (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                };
            };
        };
        {
            var _numAvail = (((@:checkr _d ?? throw "null pointer dereference")._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            if (((_p.length) > _numAvail : Bool)) {
                _p = (_p.__slice__(0, _numAvail) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_p, ((@:checkr _d ?? throw "null pointer dereference")._in.__slice__(0, ((_p.length) * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _numDec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _d ?? throw "null pointer dereference")._in = ((@:checkr _d ?? throw "null pointer dereference")._in.__slice__(((2 : stdgo.GoInt) * _numDec : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_err != null) {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = _err;
                (@:checkr _d ?? throw "null pointer dereference")._in = __tmp__0;
                (@:checkr _d ?? throw "null pointer dereference")._err = __tmp__1;
            };
        };
        if ((((@:checkr _d ?? throw "null pointer dereference")._in.length) < (2 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numDec, _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numDec, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
