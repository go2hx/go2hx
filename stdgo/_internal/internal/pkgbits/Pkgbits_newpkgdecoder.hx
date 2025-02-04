package stdgo._internal.internal.pkgbits;
function newPkgDecoder(_pkgPath:stdgo.GoString, _input:stdgo.GoString):stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder {
        var _pr = ({ _pkgPath : _pkgPath?.__copy__() } : stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder);
        var _r = stdgo._internal.strings.Strings_newreader.newReader(_input?.__copy__());
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_pr._version))) == null);
        {
            final __value__ = _pr._version;
            if (__value__ == ((0u32 : stdgo.GoUInt32))) {} else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                var _flags:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                var _flags__pointer__ = stdgo.Go.pointer(_flags);
                stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(_flags__pointer__)) == null);
                _pr._sync = (_flags & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported version: %v" : stdgo.GoString), stdgo.Go.toInterface(_pr._version)));
            };
        };
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface((_pr._elemEndsEnds.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>))) == null);
        _pr._elemEnds = (new stdgo.Slice<stdgo.GoUInt32>((_pr._elemEndsEnds[(9 : stdgo.GoInt)] : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface((_pr._elemEnds.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>))) == null);
        var __tmp__ = @:check2r _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _pos:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_err == null);
        _pr._elemData = (_input.__slice__(_pos) : stdgo.GoString)?.__copy__();
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(((_pr._elemData.length) - (8 : stdgo.GoInt) : stdgo.GoInt) == ((_pr._elemEnds[((_pr._elemEnds.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)));
        return _pr?.__copy__();
    }
