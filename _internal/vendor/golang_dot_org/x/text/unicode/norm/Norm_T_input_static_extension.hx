package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.T_input_asInterface) class T_input_static_extension {
    @:keep
    static public function _hangul( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _p:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        var _r = (0 : stdgo.GoInt32);
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_in._bytes == null) {
            if (!_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__isHangulString._isHangulString((_in._str.__slice__(_p) : stdgo.GoString)?.__copy__())) {
                return (0 : stdgo.GoInt32);
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_in._str.__slice__(_p) : stdgo.GoString)?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        } else {
            if (!_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__isHangul._isHangul((_in._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>))) {
                return (0 : stdgo.GoInt32);
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_in._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        };
        if (_size != ((3 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt32);
        };
        return _r;
    }
    @:keep
    static public function _charinfoNFKC( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _p:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes == null) {
            return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfkcData._nfkcData._lookupString((_in._str.__slice__(_p) : stdgo.GoString)?.__copy__());
        };
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfkcData._nfkcData._lookup((_in._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _charinfoNFC( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _p:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes == null) {
            return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfcData._nfcData._lookupString((_in._str.__slice__(_p) : stdgo.GoString)?.__copy__());
        };
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfcData._nfcData._lookup((_in._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _copySlice( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _buf:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.GoInt, _e:stdgo.GoInt):stdgo.GoInt {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes == null) {
            return stdgo.Go.copySlice(_buf, (_in._str.__slice__(_b, _e) : stdgo.GoString));
        };
        return stdgo.Go.copySlice(_buf, (_in._bytes.__slice__(_b, _e) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _appendSlice( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _buf:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.GoInt, _e:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes != null) {
            return (_buf.__append__(...((_in._bytes.__slice__(_b, _e) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        {
            var _i = (_b : stdgo.GoInt);
            stdgo.Go.cfor((_i < _e : Bool), _i++, {
                _buf = (_buf.__append__(_in._str[(_i : stdgo.GoInt)]));
            });
        };
        return _buf;
    }
    @:keep
    static public function _skipContinuationBytes( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _p:stdgo.GoInt):stdgo.GoInt {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes == null) {
            stdgo.Go.cfor(((_p < (_in._str.length) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_in._str[(_p : stdgo.GoInt)]) : Bool), _p++, {});
        } else {
            stdgo.Go.cfor(((_p < (_in._bytes.length) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_in._bytes[(_p : stdgo.GoInt)]) : Bool), _p++, {});
        };
        return _p;
    }
    @:keep
    static public function _skipASCII( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _p:stdgo.GoInt, _max:stdgo.GoInt):stdgo.GoInt {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes == null) {
            stdgo.Go.cfor(((_p < _max : Bool) && (_in._str[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool), _p++, {});
        } else {
            stdgo.Go.cfor(((_p < _max : Bool) && (_in._bytes[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool), _p++, {});
        };
        return _p;
    }
    @:keep
    static public function __byte( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _p:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        if (_in._bytes == null) {
            return _in._str[(_p : stdgo.GoInt)];
        };
        return _in._bytes[(_p : stdgo.GoInt)];
    }
    @:keep
    static public function _setString( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _str:stdgo.GoString):Void {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        _in._str = _str?.__copy__();
        _in._bytes = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _setBytes( _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input>, _str:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _in:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input> = _in;
        _in._str = stdgo.Go.str()?.__copy__();
        _in._bytes = _str;
    }
}
