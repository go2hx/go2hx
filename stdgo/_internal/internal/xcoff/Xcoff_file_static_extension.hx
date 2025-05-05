package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        var _s = _f.sectionByType((4096u32 : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L692"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L693"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _f._readImportIDs(_s), _all:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L696"
        return { _0 : _all, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        var _s = _f.sectionByType((4096u32 : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L586"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L587"
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L590"
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L591"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var _stlen:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _stoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nsyms:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _symoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L597"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.targetMachine;
            if (__value__ == ((479 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_loaderheader32.LoaderHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_loaderheader32.LoaderHeader32>);
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L600"
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_lhdr))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L601"
                        return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
                    };
                };
                _stlen = (@:checkr _lhdr ?? throw "null pointer dereference").lstlen;
                _stoff = ((@:checkr _lhdr ?? throw "null pointer dereference").lstoff : stdgo.GoUInt64);
                _nsyms = (@:checkr _lhdr ?? throw "null pointer dereference").lnsyms;
                _symoff = (32i64 : stdgo.GoUInt64);
            } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_loaderheader64.LoaderHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_loaderheader64.LoaderHeader64>);
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L609"
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_lhdr))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L610"
                        return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
                    };
                };
                _stlen = (@:checkr _lhdr ?? throw "null pointer dereference").lstlen;
                _stoff = (@:checkr _lhdr ?? throw "null pointer dereference").lstoff;
                _nsyms = (@:checkr _lhdr ?? throw "null pointer dereference").lnsyms;
                _symoff = (@:checkr _lhdr ?? throw "null pointer dereference").lsymoff;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L619"
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._sr.seek((_stoff : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L620"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var _st = (new stdgo.Slice<stdgo.GoUInt8>((_stlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L623"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), _st), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L624"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var __tmp__ = _f._readImportIDs(_s), _libs:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L629"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L630"
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L634"
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._sr.seek((_symoff : stdgo.GoInt64), (0 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L635"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var _all = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L638"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_nsyms : stdgo.GoInt) : Bool)) {
                var _name:stdgo.GoString = ("" : stdgo.GoString);
var _ifile:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _ok:Bool = false;
//"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L642"
                {
                    final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.targetMachine;
                    if (__value__ == ((479 : stdgo.GoUInt16))) {
                        var _ldsym = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_loadersymbol32.LoaderSymbol32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_loadersymbol32.LoaderSymbol32>);
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L645"
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_ldsym))) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L646"
                                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L648"
                        if (((@:checkr _ldsym ?? throw "null pointer dereference").lsmtype & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L649"
                            {
                                _i++;
                                continue;
                            };
                        };
                        var _zeroes = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _ldsym ?? throw "null pointer dereference").lname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L652"
                        if (_zeroes != ((0u32 : stdgo.GoUInt32))) {
                            _name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring(((@:checkr _ldsym ?? throw "null pointer dereference").lname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)).__copy__();
                        } else {
                            var _offset = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _ldsym ?? throw "null pointer dereference").lname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                            {
                                var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString(_st, _offset);
                                _name = @:tmpset0 __tmp__._0.__copy__();
                                _ok = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L657"
                            if (!_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L658"
                                {
                                    _i++;
                                    continue;
                                };
                            };
                        };
                        _ifile = (@:checkr _ldsym ?? throw "null pointer dereference").lifile;
                    } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                        var _ldsym = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_loadersymbol64.LoaderSymbol64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_loadersymbol64.LoaderSymbol64>);
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L664"
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_ldsym))) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L665"
                                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>), _1 : _err };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L667"
                        if (((@:checkr _ldsym ?? throw "null pointer dereference").lsmtype & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L668"
                            {
                                _i++;
                                continue;
                            };
                        };
                        {
                            var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getstring._getString(_st, (@:checkr _ldsym ?? throw "null pointer dereference").loffset);
                            _name = @:tmpset0 __tmp__._0.__copy__();
                            _ok = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L671"
                        if (!_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L672"
                            {
                                _i++;
                                continue;
                            };
                        };
                        _ifile = (@:checkr _ldsym ?? throw "null pointer dereference").lifile;
                    };
                };
var _sym:stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol = ({} : stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol);
_sym.name = _name.__copy__();
//"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L678"
                if (((_ifile >= (1u32 : stdgo.GoUInt32) : Bool) && ((_ifile : stdgo.GoInt) <= (_libs.length) : Bool) : Bool)) {
                    _sym.library = _libs[((_ifile - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)].__copy__();
                };
_all = (_all.__append__(_sym.__copy__()) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_importedsymbol.ImportedSymbol>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L684"
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readImportIDs( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>, _s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L521"
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L522"
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        var _istlen:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nimpid:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _impoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L527"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.targetMachine;
            if (__value__ == ((479 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_loaderheader32.LoaderHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_loaderheader32.LoaderHeader32>);
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L530"
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_lhdr))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L531"
                        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                    };
                };
                _istlen = (@:checkr _lhdr ?? throw "null pointer dereference").listlen;
                _nimpid = (@:checkr _lhdr ?? throw "null pointer dereference").lnimpid;
                _impoff = ((@:checkr _lhdr ?? throw "null pointer dereference").limpoff : stdgo.GoUInt64);
            } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_loaderheader64.LoaderHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_loaderheader64.LoaderHeader64>);
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L538"
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_lhdr))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L539"
                        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                    };
                };
                _istlen = (@:checkr _lhdr ?? throw "null pointer dereference").listlen;
                _nimpid = (@:checkr _lhdr ?? throw "null pointer dereference").lnimpid;
                _impoff = (@:checkr _lhdr ?? throw "null pointer dereference").limpoff;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L547"
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._sr.seek((_impoff : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L548"
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        var _table = (new stdgo.Slice<stdgo.GoUInt8>((_istlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L551"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), _table), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L552"
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        var _offset = (0 : stdgo.GoInt);
        var _libpath = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
        (@:checkr _f ?? throw "null pointer dereference").libraryPaths = stdgo._internal.strings.Strings_split.split(_libpath?.__copy__(), (":" : stdgo.GoString));
        _offset = (_offset + (((_libpath.length) + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _all = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L561"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_nimpid : stdgo.GoInt) : Bool)) {
                var _impidpath = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)).__copy__() : stdgo.GoString);
_offset = (_offset + (((_impidpath.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
var _impidbase = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)).__copy__() : stdgo.GoString);
_offset = (_offset + (((_impidbase.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
var _impidmem = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)).__copy__() : stdgo.GoString);
_offset = (_offset + (((_impidmem.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
var _path:stdgo.GoString = ("" : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L569"
                if (((_impidpath.length) > (0 : stdgo.GoInt) : Bool)) {
                    _path = ((((_impidpath + ("/" : stdgo.GoString).__copy__() : stdgo.GoString) + _impidbase.__copy__() : stdgo.GoString) + ("/" : stdgo.GoString).__copy__() : stdgo.GoString) + _impidmem.__copy__() : stdgo.GoString).__copy__();
                } else {
                    _path = ((_impidbase + ("/" : stdgo.GoString).__copy__() : stdgo.GoString) + _impidmem.__copy__() : stdgo.GoString).__copy__();
                };
_all = (_all.__append__(_path.__copy__()) : stdgo.Slice<stdgo.GoString>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L577"
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dWARF( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        var _subtypes = (new stdgo.GoArray<stdgo.GoUInt32>(5, 5, ...[(393216u32 : stdgo.GoUInt32), (65536u32 : stdgo.GoUInt32), (131072u32 : stdgo.GoUInt32), (524288u32 : stdgo.GoUInt32), (458752u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>)?.__copy__();
        var _dat:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>(5, 5);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L502"
        for (_i => _subtype in _subtypes.__copy__()) {
            var _s = _f.sectionByType(((16u32 : stdgo.GoUInt32) | _subtype : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L504"
            if (({
                final value = _s;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var __tmp__ = _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L506"
                if (((_err != null) && ((_b.length : stdgo.GoUInt64) < (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L507"
                    return { _0 : null, _1 : _err };
                };
                _dat[(_i : stdgo.GoInt)] = _b;
            };
        };
        var __0 = _dat[(0 : stdgo.GoInt)], __1 = _dat[(1 : stdgo.GoInt)], __2 = _dat[(2 : stdgo.GoInt)], __3 = _dat[(3 : stdgo.GoInt)], __4 = _dat[(4 : stdgo.GoInt)];
var _str = __4, _ranges = __3, _line = __2, _info = __1, _abbrev = __0;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L514"
        return stdgo._internal.debug.dwarf.Dwarf_new_.new_(_abbrev, (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), _info, _line, (null : stdgo.Slice<stdgo.GoUInt8>), _ranges, _str);
    }
    @:keep
    @:tdfield
    static public function cSect( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>, _name:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L477"
        for (__0 => _sym in (@:checkr _f ?? throw "null pointer dereference").symbols) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L478"
            if ((((@:checkr _sym ?? throw "null pointer dereference").name == _name) && ((@:checkr _sym ?? throw "null pointer dereference").auxCSect.symbolType == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L479"
                {
                    var _i = ((@:checkr _sym ?? throw "null pointer dereference").sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if ((((0 : stdgo.GoInt) <= _i : Bool) && (_i < ((@:checkr _f ?? throw "null pointer dereference").sections.length) : Bool) : Bool)) {
                        var _s = (@:checkr _f ?? throw "null pointer dereference").sections[(_i : stdgo.GoInt)];
                        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L481"
                        if ((((@:checkr _sym ?? throw "null pointer dereference").value + ((@:checkr _sym ?? throw "null pointer dereference").auxCSect.length_ : stdgo.GoUInt64) : stdgo.GoUInt64) <= (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : Bool)) {
                            var _dat = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _sym ?? throw "null pointer dereference").auxCSect.length_ : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._sr.readAt(_dat, ((@:checkr _sym ?? throw "null pointer dereference").value : stdgo.GoInt64)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L484"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L485"
                                return (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L487"
                            return _dat;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L490"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L493"
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function sectionByType( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>, _typ:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L130"
        for (__0 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L131"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.type == (_typ)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L132"
                return _s;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L135"
        return null;
    }
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L119"
        for (__0 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L120"
            if ((((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == _name) || ((((_name.length) > (8 : stdgo.GoInt) : Bool) && ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name.__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L121"
                return _s;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L124"
        return null;
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L107"
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L111"
        return _err;
    }
}
