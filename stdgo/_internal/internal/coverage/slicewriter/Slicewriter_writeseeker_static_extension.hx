package stdgo._internal.internal.coverage.slicewriter;
@:keep @:allow(stdgo._internal.internal.coverage.slicewriter.Slicewriter.WriteSeeker_asInterface) class WriteSeeker_static_extension {
    @:keep
    @:tdfield
    static public function read( _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker> = _sws;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _amt = (_p.length : stdgo.GoInt);
        var _toread = ((@:checkr _sws ?? throw "null pointer dereference")._payload.__slice__((@:checkr _sws ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_toread.length) < _amt : Bool)) {
            _amt = (_toread.length);
        };
        _p.__copyTo__(_toread);
        (@:checkr _sws ?? throw "null pointer dereference")._off = ((@:checkr _sws ?? throw "null pointer dereference")._off + ((_amt : stdgo.GoInt64)) : stdgo.GoInt64);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _amt, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function bytesWritten( _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker> = _sws;
        return (@:checkr _sws ?? throw "null pointer dereference")._payload;
    }
    @:keep
    @:tdfield
    static public function seek( _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker> = _sws;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                if ((((@:checkr _sws ?? throw "null pointer dereference")._off != _offset) && (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr _sws ?? throw "null pointer dereference")._payload.length : stdgo.GoInt64) : Bool) : Bool)) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid seek: new offset %d (out of range [0 %d]" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(((@:checkr _sws ?? throw "null pointer dereference")._payload.length))) };
                };
                (@:checkr _sws ?? throw "null pointer dereference")._off = _offset;
                return { _0 : _offset, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _newoff = ((@:checkr _sws ?? throw "null pointer dereference")._off + _offset : stdgo.GoInt64);
                if (((_newoff != (@:checkr _sws ?? throw "null pointer dereference")._off) && (((_newoff < (0i64 : stdgo.GoInt64) : Bool) || (_newoff > ((@:checkr _sws ?? throw "null pointer dereference")._payload.length : stdgo.GoInt64) : Bool) : Bool)) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid seek: new offset %d (out of range [0 %d]" : stdgo.GoString), stdgo.Go.toInterface(_newoff), stdgo.Go.toInterface(((@:checkr _sws ?? throw "null pointer dereference")._payload.length))) };
                };
                (@:checkr _sws ?? throw "null pointer dereference")._off = ((@:checkr _sws ?? throw "null pointer dereference")._off + (_offset) : stdgo.GoInt64);
                return { _0 : (@:checkr _sws ?? throw "null pointer dereference")._off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                var _newoff = (((@:checkr _sws ?? throw "null pointer dereference")._payload.length : stdgo.GoInt64) + _offset : stdgo.GoInt64);
                if (((_newoff != (@:checkr _sws ?? throw "null pointer dereference")._off) && (((_newoff < (0i64 : stdgo.GoInt64) : Bool) || (_newoff > ((@:checkr _sws ?? throw "null pointer dereference")._payload.length : stdgo.GoInt64) : Bool) : Bool)) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid seek: new offset %d (out of range [0 %d]" : stdgo.GoString), stdgo.Go.toInterface(_newoff), stdgo.Go.toInterface(((@:checkr _sws ?? throw "null pointer dereference")._payload.length))) };
                };
                (@:checkr _sws ?? throw "null pointer dereference")._off = _newoff;
                return { _0 : (@:checkr _sws ?? throw "null pointer dereference")._off, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported seek mode %d" : stdgo.GoString), stdgo.Go.toInterface(_whence)) };
    }
    @:keep
    @:tdfield
    static public function write( _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker> = _sws;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _amt = (_p.length : stdgo.GoInt);
        var _towrite = ((@:checkr _sws ?? throw "null pointer dereference")._payload.__slice__((@:checkr _sws ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_towrite.length) < _amt : Bool)) {
            (@:checkr _sws ?? throw "null pointer dereference")._payload = ((@:checkr _sws ?? throw "null pointer dereference")._payload.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_amt - (_towrite.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _towrite = ((@:checkr _sws ?? throw "null pointer dereference")._payload.__slice__((@:checkr _sws ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _towrite.__copyTo__(_p);
        (@:checkr _sws ?? throw "null pointer dereference")._off = ((@:checkr _sws ?? throw "null pointer dereference")._off + ((_amt : stdgo.GoInt64)) : stdgo.GoInt64);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _amt, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
