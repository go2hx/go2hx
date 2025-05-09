package stdgo._internal.debug.elf;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>; var _1 : stdgo.Error; } {
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _ident:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L292"
        {
            var __tmp__ = _r.readAt((_ident.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L293"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L295"
        if ((((_ident[(0 : stdgo.GoInt)] != ((127 : stdgo.GoUInt8)) || _ident[(1 : stdgo.GoInt)] != ((69 : stdgo.GoUInt8)) : Bool) || _ident[(2 : stdgo.GoInt)] != ((76 : stdgo.GoUInt8)) : Bool) || (_ident[(3 : stdgo.GoInt)] != (70 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L296"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("bad magic number" : stdgo.GoString), stdgo.Go.toInterface((_ident.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_file.File)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_ = (_ident[(4 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_class_.Class_);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L301"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {} else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {} else {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L306"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("unknown ELF class" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader.class_))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
            };
        };
        (@:checkr _f ?? throw "null pointer dereference").fileHeader.data = (_ident[(5 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_data.Data);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L310"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.data;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_data.Data))) {
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_data.Data))) {
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L316"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("unknown ELF data encoding" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader.data))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
            };
        };
        (@:checkr _f ?? throw "null pointer dereference").fileHeader.version = (_ident[(6 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_version.Version);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L320"
        if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.version != ((1 : stdgo._internal.debug.elf.Elf_version.Version))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L321"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("unknown ELF version" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").fileHeader.version))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        (@:checkr _f ?? throw "null pointer dereference").fileHeader.oSABI = (_ident[(7 : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_osabi.OSABI);
        (@:checkr _f ?? throw "null pointer dereference").fileHeader.aBIVersion = _ident[(8 : stdgo.GoInt)];
        var _phoff:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _phentsize:stdgo.GoInt = (0 : stdgo.GoInt), _phnum:stdgo.GoInt = (0 : stdgo.GoInt);
        var _shoff:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _shentsize:stdgo.GoInt = (0 : stdgo.GoInt), _shnum:stdgo.GoInt = (0 : stdgo.GoInt), _shstrndx:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L332"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                var _hdr = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_header32.Header32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_header32.Header32>);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L335"
                _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L336"
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_hdr))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L337"
                        return { _0 : null, _1 : _err };
                    };
                };
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.type = ((@:checkr _hdr ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_type_.Type_);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.machine = ((@:checkr _hdr ?? throw "null pointer dereference").machine : stdgo._internal.debug.elf.Elf_machine.Machine);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.entry = ((@:checkr _hdr ?? throw "null pointer dereference").entry : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L342"
                {
                    var _v = ((@:checkr _hdr ?? throw "null pointer dereference").version : stdgo._internal.debug.elf.Elf_version.Version);
                    if (_v != ((@:checkr _f ?? throw "null pointer dereference").fileHeader.version)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L343"
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("mismatched ELF version" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                    };
                };
                _phoff = ((@:checkr _hdr ?? throw "null pointer dereference").phoff : stdgo.GoInt64);
                _phentsize = ((@:checkr _hdr ?? throw "null pointer dereference").phentsize : stdgo.GoInt);
                _phnum = ((@:checkr _hdr ?? throw "null pointer dereference").phnum : stdgo.GoInt);
                _shoff = ((@:checkr _hdr ?? throw "null pointer dereference").shoff : stdgo.GoInt64);
                _shentsize = ((@:checkr _hdr ?? throw "null pointer dereference").shentsize : stdgo.GoInt);
                _shnum = ((@:checkr _hdr ?? throw "null pointer dereference").shnum : stdgo.GoInt);
                _shstrndx = ((@:checkr _hdr ?? throw "null pointer dereference").shstrndx : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                var _hdr = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_header64.Header64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_header64.Header64>);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L354"
                _sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L355"
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_hdr))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L356"
                        return { _0 : null, _1 : _err };
                    };
                };
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.type = ((@:checkr _hdr ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_type_.Type_);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.machine = ((@:checkr _hdr ?? throw "null pointer dereference").machine : stdgo._internal.debug.elf.Elf_machine.Machine);
                (@:checkr _f ?? throw "null pointer dereference").fileHeader.entry = (@:checkr _hdr ?? throw "null pointer dereference").entry;
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L361"
                {
                    var _v = ((@:checkr _hdr ?? throw "null pointer dereference").version : stdgo._internal.debug.elf.Elf_version.Version);
                    if (_v != ((@:checkr _f ?? throw "null pointer dereference").fileHeader.version)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L362"
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("mismatched ELF version" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                    };
                };
                _phoff = ((@:checkr _hdr ?? throw "null pointer dereference").phoff : stdgo.GoInt64);
                _phentsize = ((@:checkr _hdr ?? throw "null pointer dereference").phentsize : stdgo.GoInt);
                _phnum = ((@:checkr _hdr ?? throw "null pointer dereference").phnum : stdgo.GoInt);
                _shoff = ((@:checkr _hdr ?? throw "null pointer dereference").shoff : stdgo.GoInt64);
                _shentsize = ((@:checkr _hdr ?? throw "null pointer dereference").shentsize : stdgo.GoInt);
                _shnum = ((@:checkr _hdr ?? throw "null pointer dereference").shnum : stdgo.GoInt);
                _shstrndx = ((@:checkr _hdr ?? throw "null pointer dereference").shstrndx : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L373"
        if ((_shoff < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L374"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid shoff" : stdgo.GoString), stdgo.Go.toInterface(_shoff)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L376"
        if ((_phoff < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L377"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid phoff" : stdgo.GoString), stdgo.Go.toInterface(_phoff)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L380"
        if (((_shoff == (0i64 : stdgo.GoInt64)) && (_shnum != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L381"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF shnum for shoff=0" : stdgo.GoString), stdgo.Go.toInterface(_shnum)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L384"
        if (((_shnum > (0 : stdgo.GoInt) : Bool) && (_shstrndx >= _shnum : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L385"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF shstrndx" : stdgo.GoString), stdgo.Go.toInterface(_shstrndx)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        var _wantPhentsize:stdgo.GoInt = (0 : stdgo.GoInt), _wantShentsize:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L389"
        {
            final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
            if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                _wantPhentsize = (32 : stdgo.GoInt);
                _wantShentsize = (40 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                _wantPhentsize = (56 : stdgo.GoInt);
                _wantShentsize = (64 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L397"
        if (((_phnum > (0 : stdgo.GoInt) : Bool) && (_phentsize < _wantPhentsize : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L398"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF phentsize" : stdgo.GoString), stdgo.Go.toInterface(_phentsize)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        (@:checkr _f ?? throw "null pointer dereference").progs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>>((_phnum : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L403"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _phnum : Bool)) {
                var _off = (_phoff + ((_i : stdgo.GoInt64) * (_phentsize : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L405"
                _sr.seek(_off, (0 : stdgo.GoInt));
var _p = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_prog.Prog)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>);
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L407"
                {
                    final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
                    if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                        var _ph = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_prog32.Prog32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_prog32.Prog32>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L410"
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_ph))) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L411"
                                return { _0 : null, _1 : _err };
                            };
                        };
                        (@:checkr _p ?? throw "null pointer dereference").progHeader = ({ type : ((@:checkr _ph ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_progtype.ProgType), flags : ((@:checkr _ph ?? throw "null pointer dereference").flags : stdgo._internal.debug.elf.Elf_progflag.ProgFlag), off : ((@:checkr _ph ?? throw "null pointer dereference").off : stdgo.GoUInt64), vaddr : ((@:checkr _ph ?? throw "null pointer dereference").vaddr : stdgo.GoUInt64), paddr : ((@:checkr _ph ?? throw "null pointer dereference").paddr : stdgo.GoUInt64), filesz : ((@:checkr _ph ?? throw "null pointer dereference").filesz : stdgo.GoUInt64), memsz : ((@:checkr _ph ?? throw "null pointer dereference").memsz : stdgo.GoUInt64), align : ((@:checkr _ph ?? throw "null pointer dereference").align : stdgo.GoUInt64) } : stdgo._internal.debug.elf.Elf_progheader.ProgHeader);
                    } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                        var _ph = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_prog64.Prog64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_prog64.Prog64>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L425"
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_ph))) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L426"
                                return { _0 : null, _1 : _err };
                            };
                        };
                        (@:checkr _p ?? throw "null pointer dereference").progHeader = ({ type : ((@:checkr _ph ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_progtype.ProgType), flags : ((@:checkr _ph ?? throw "null pointer dereference").flags : stdgo._internal.debug.elf.Elf_progflag.ProgFlag), off : (@:checkr _ph ?? throw "null pointer dereference").off, vaddr : (@:checkr _ph ?? throw "null pointer dereference").vaddr, paddr : (@:checkr _ph ?? throw "null pointer dereference").paddr, filesz : (@:checkr _ph ?? throw "null pointer dereference").filesz, memsz : (@:checkr _ph ?? throw "null pointer dereference").memsz, align : (@:checkr _ph ?? throw "null pointer dereference").align } : stdgo._internal.debug.elf.Elf_progheader.ProgHeader);
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L439"
                if ((((@:checkr _p ?? throw "null pointer dereference").progHeader.off : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L440"
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_off, ("invalid program header offset" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").progHeader.off)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L442"
                if ((((@:checkr _p ?? throw "null pointer dereference").progHeader.filesz : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L443"
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_off, ("invalid program header file size" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").progHeader.filesz)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                };
(@:checkr _p ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, ((@:checkr _p ?? throw "null pointer dereference").progHeader.off : stdgo.GoInt64), ((@:checkr _p ?? throw "null pointer dereference").progHeader.filesz : stdgo.GoInt64));
(@:checkr _p ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._sr);
(@:checkr _f ?? throw "null pointer dereference").progs[(_i : stdgo.GoInt)] = _p;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L454"
        if (((_shoff > (0i64 : stdgo.GoInt64) : Bool) && (_shnum == (0 : stdgo.GoInt)) : Bool)) {
            var _typ:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _link:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L456"
            _sr.seek(_shoff, (0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L457"
            {
                final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
                if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                    var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_section32.Section32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_section32.Section32>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L460"
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_sh))) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L461"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _shnum = ((@:checkr _sh ?? throw "null pointer dereference").size : stdgo.GoInt);
                    _typ = (@:checkr _sh ?? throw "null pointer dereference").type;
                    _link = (@:checkr _sh ?? throw "null pointer dereference").link;
                } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                    var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_section64.Section64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_section64.Section64>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L468"
                    {
                        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_sh))) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L469"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _shnum = ((@:checkr _sh ?? throw "null pointer dereference").size : stdgo.GoInt);
                    _typ = (@:checkr _sh ?? throw "null pointer dereference").type;
                    _link = (@:checkr _sh ?? throw "null pointer dereference").link;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L475"
            if ((_typ : stdgo._internal.debug.elf.Elf_sectiontype.SectionType) != ((0u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L476"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_shoff, ("invalid type of the initial section" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_typ : stdgo._internal.debug.elf.Elf_sectiontype.SectionType)))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L479"
            if ((_shnum < ((65280 : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex) : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L480"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_shoff, ("invalid ELF shnum contained in sh_size" : stdgo.GoString), stdgo.Go.toInterface(_shnum)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L488"
            if (_shstrndx == (((65535 : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex) : stdgo.GoInt))) {
                _shstrndx = (_link : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L490"
                if ((_shstrndx < ((65280 : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex) : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L491"
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_shoff, ("invalid ELF shstrndx contained in sh_link" : stdgo.GoString), stdgo.Go.toInterface(_shstrndx)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L496"
        if (((_shnum > (0 : stdgo.GoInt) : Bool) && (_shentsize < _wantShentsize : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L497"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("invalid ELF shentsize" : stdgo.GoString), stdgo.Go.toInterface(_shentsize)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>))), (_shnum : stdgo.GoUInt64)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L502"
        if ((_c < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L503"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((0i64 : stdgo.GoInt64), ("too many sections" : stdgo.GoString), stdgo.Go.toInterface(_shnum)) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        (@:checkr _f ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>((0 : stdgo.GoInt).toBasic(), _c) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>);
        var _names = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), _c).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L507"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _shnum : Bool)) {
                var _off = (_shoff + ((_i : stdgo.GoInt64) * (_shentsize : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L509"
                _sr.seek(_off, (0 : stdgo.GoInt));
var _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_section.Section)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>);
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L511"
                {
                    final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
                    if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                        var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_section32.Section32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_section32.Section32>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L514"
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_sh))) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L515"
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _names = (_names.__append__((@:checkr _sh ?? throw "null pointer dereference").name) : stdgo.Slice<stdgo.GoUInt32>);
                        (@:checkr _s ?? throw "null pointer dereference").sectionHeader = ({ type : ((@:checkr _sh ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_sectiontype.SectionType), flags : ((@:checkr _sh ?? throw "null pointer dereference").flags : stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag), addr : ((@:checkr _sh ?? throw "null pointer dereference").addr : stdgo.GoUInt64), offset : ((@:checkr _sh ?? throw "null pointer dereference").off : stdgo.GoUInt64), fileSize : ((@:checkr _sh ?? throw "null pointer dereference").size : stdgo.GoUInt64), link : (@:checkr _sh ?? throw "null pointer dereference").link, info : (@:checkr _sh ?? throw "null pointer dereference").info, addralign : ((@:checkr _sh ?? throw "null pointer dereference").addralign : stdgo.GoUInt64), entsize : ((@:checkr _sh ?? throw "null pointer dereference").entsize : stdgo.GoUInt64) } : stdgo._internal.debug.elf.Elf_sectionheader.SectionHeader);
                    } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                        var _sh = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_section64.Section64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_section64.Section64>);
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L531"
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_sh))) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L532"
                                return { _0 : null, _1 : _err };
                            };
                        };
                        _names = (_names.__append__((@:checkr _sh ?? throw "null pointer dereference").name) : stdgo.Slice<stdgo.GoUInt32>);
                        (@:checkr _s ?? throw "null pointer dereference").sectionHeader = ({ type : ((@:checkr _sh ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_sectiontype.SectionType), flags : ((@:checkr _sh ?? throw "null pointer dereference").flags : stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag), offset : (@:checkr _sh ?? throw "null pointer dereference").off, fileSize : (@:checkr _sh ?? throw "null pointer dereference").size, addr : (@:checkr _sh ?? throw "null pointer dereference").addr, link : (@:checkr _sh ?? throw "null pointer dereference").link, info : (@:checkr _sh ?? throw "null pointer dereference").info, addralign : (@:checkr _sh ?? throw "null pointer dereference").addralign, entsize : (@:checkr _sh ?? throw "null pointer dereference").entsize } : stdgo._internal.debug.elf.Elf_sectionheader.SectionHeader);
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L547"
                if ((((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L548"
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_off, ("invalid section offset" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoInt64))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                };
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L550"
                if ((((@:checkr _s ?? throw "null pointer dereference").sectionHeader.fileSize : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L551"
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError(_off, ("invalid section size" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _s ?? throw "null pointer dereference").sectionHeader.fileSize : stdgo.GoInt64))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
                };
(@:checkr _s ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoInt64), ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.fileSize : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L555"
                if (((@:checkr _s ?? throw "null pointer dereference").sectionHeader.flags & (2048u32 : stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag) : stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag) == ((0u32 : stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag))) {
                    (@:checkr _s ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr);
                    (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _s ?? throw "null pointer dereference").sectionHeader.fileSize;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L560"
                    {
                        final __value__ = (@:checkr _f ?? throw "null pointer dereference").fileHeader.class_;
                        if (__value__ == ((1 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                            var _ch = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_chdr32.Chdr32)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_chdr32.Chdr32>);
                            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L563"
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_ch))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L564"
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            (@:checkr _s ?? throw "null pointer dereference")._compressionType = ((@:checkr _ch ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_compressiontype.CompressionType);
                            (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size = ((@:checkr _ch ?? throw "null pointer dereference").size : stdgo.GoUInt64);
                            (@:checkr _s ?? throw "null pointer dereference").sectionHeader.addralign = ((@:checkr _ch ?? throw "null pointer dereference").addralign : stdgo.GoUInt64);
                            (@:checkr _s ?? throw "null pointer dereference")._compressionOffset = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface(_ch))) : stdgo.GoInt64);
                        } else if (__value__ == ((2 : stdgo._internal.debug.elf.Elf_class_.Class_))) {
                            var _ch = (stdgo.Go.setRef(({} : stdgo._internal.debug.elf.Elf_chdr64.Chdr64)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_chdr64.Chdr64>);
                            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L572"
                            {
                                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr), (@:checkr _f ?? throw "null pointer dereference").fileHeader.byteOrder, stdgo.Go.toInterface(stdgo.Go.asInterface(_ch))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L573"
                                    return { _0 : null, _1 : _err };
                                };
                            };
                            (@:checkr _s ?? throw "null pointer dereference")._compressionType = ((@:checkr _ch ?? throw "null pointer dereference").type : stdgo._internal.debug.elf.Elf_compressiontype.CompressionType);
                            (@:checkr _s ?? throw "null pointer dereference").sectionHeader.size = (@:checkr _ch ?? throw "null pointer dereference").size;
                            (@:checkr _s ?? throw "null pointer dereference").sectionHeader.addralign = (@:checkr _ch ?? throw "null pointer dereference").addralign;
                            (@:checkr _s ?? throw "null pointer dereference")._compressionOffset = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface(_ch))) : stdgo.GoInt64);
                        };
                    };
                };
(@:checkr _f ?? throw "null pointer dereference").sections = ((@:checkr _f ?? throw "null pointer dereference").sections.__append__(_s) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L585"
        if (((@:checkr _f ?? throw "null pointer dereference").sections.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L586"
            return { _0 : _f, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L590"
        if (_shstrndx == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L593"
            return { _0 : _f, _1 : (null : stdgo.Error) };
        };
        var _shstr = (@:checkr _f ?? throw "null pointer dereference").sections[(_shstrndx : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L596"
        if ((@:checkr _shstr ?? throw "null pointer dereference").sectionHeader.type != ((3u32 : stdgo._internal.debug.elf.Elf_sectiontype.SectionType))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L597"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((_shoff + ((_shstrndx * _shentsize : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64), ("invalid ELF section name string table type" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _shstr ?? throw "null pointer dereference").sectionHeader.type))) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
        };
        var __tmp__ = _shstr.data(), _shstrtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L600"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L601"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L603"
        for (_i => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            var _ok:Bool = false;
            {
                var __tmp__ = stdgo._internal.debug.elf.Elf__getstring._getString(_shstrtab, (_names[(_i : stdgo.GoInt)] : stdgo.GoInt));
                (@:checkr _s ?? throw "null pointer dereference").sectionHeader.name = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L606"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L607"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.elf.Elf_formaterror.FormatError((_shoff + ((_i * _shentsize : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64), ("bad section name index" : stdgo.GoString), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)])) : stdgo._internal.debug.elf.Elf_formaterror.FormatError)) : stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L611"
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
