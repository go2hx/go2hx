package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.Iter_asInterface) class Iter_static_extension {
    @:keep
    static public function next( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        return _i._next(_i);
    }
    @:keep
    static public function done( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):Bool {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        return (_i._p >= _i._rb._nsrc : Bool);
    }
    @:keep
    static public function _setDone( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):Void {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextDone._nextDone;
        _i._p = _i._rb._nsrc;
    }
    @:keep
    static public function pos( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        return _i._p;
    }
    @:keep
    static public function _returnSlice( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>, _a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        if (_i._rb._src._bytes == null) {
            return (_i._buf.__slice__(0, stdgo.Go.copySlice((_i._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_i._rb._src._str.__slice__(_a, _b) : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_i._rb._src._bytes.__slice__(_a, _b) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function seek( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        var _abs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _abs = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _abs = ((_i._p : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _abs = ((_i._rb._nsrc : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("norm: invalid whence" : stdgo.GoString)) };
            };
        };
        if ((_abs < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("norm: negative position" : stdgo.GoString)) };
        };
        if (((_abs : stdgo.GoInt) >= _i._rb._nsrc : Bool)) {
            _i._setDone();
            return { _0 : (_i._p : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        _i._p = (_abs : stdgo.GoInt);
        _i._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        _i._next = _i._rb._f._nextMain;
        _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
        _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function initString( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>, _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:stdgo.GoString):Void {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        _i._p = (0 : stdgo.GoInt);
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            _i._setDone();
            _i._rb._nsrc = (0 : stdgo.GoInt);
            return;
        };
        _i._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        _i._rb._initString(_f, _src?.__copy__());
        _i._next = _i._rb._f._nextMain;
        _i._asciiF = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextASCIIString._nextASCIIString;
        _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
        _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
    }
    @:keep
    static public function init( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>, _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter> = _i;
        _i._p = (0 : stdgo.GoInt);
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            _i._setDone();
            _i._rb._nsrc = (0 : stdgo.GoInt);
            return;
        };
        _i._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        _i._rb._init(_f, _src);
        _i._next = _i._rb._f._nextMain;
        _i._asciiF = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextASCIIBytes._nextASCIIBytes;
        _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
        _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
    }
}
