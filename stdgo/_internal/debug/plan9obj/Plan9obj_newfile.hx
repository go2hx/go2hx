package stdgo._internal.debug.plan9obj;
function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>; var _1 : stdgo.Error; } {
        var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        {
            var __tmp__ = _r.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.debug.plan9obj.Plan9obj__parsemagic._parseMagic((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _ph = (stdgo.Go.setRef(({} : stdgo._internal.debug.plan9obj.Plan9obj_t_prog.T_prog)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_prog.T_prog>);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface(_ph))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _f = (stdgo.Go.setRef(({ fileHeader : ({ magic : (@:checkr _ph ?? throw "null pointer dereference").magic, bss : (@:checkr _ph ?? throw "null pointer dereference").bss, entry : ((@:checkr _ph ?? throw "null pointer dereference").entry : stdgo.GoUInt64), ptrSize : (4 : stdgo.GoInt), loadAddress : (4096i64 : stdgo.GoUInt64), hdrSize : (32i64 : stdgo.GoUInt64) } : stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader) } : stdgo._internal.debug.plan9obj.Plan9obj_file.File)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>);
        if (((@:checkr _ph ?? throw "null pointer dereference").magic & (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _f ?? throw "null pointer dereference").fileHeader.entry))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            (@:checkr _f ?? throw "null pointer dereference").fileHeader.ptrSize = (8 : stdgo.GoInt);
            (@:checkr _f ?? throw "null pointer dereference").fileHeader.loadAddress = (2097152i64 : stdgo.GoUInt64);
            (@:checkr _f ?? throw "null pointer dereference").fileHeader.hdrSize = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.hdrSize + ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        var _sects = (new stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0>(5, 5, ...[({ _name : ("text" : stdgo.GoString), _size : (@:checkr _ph ?? throw "null pointer dereference").text } : stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0), ({ _name : ("data" : stdgo.GoString), _size : (@:checkr _ph ?? throw "null pointer dereference").data } : stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0), ({ _name : ("syms" : stdgo.GoString), _size : (@:checkr _ph ?? throw "null pointer dereference").syms } : stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0), ({ _name : ("spsz" : stdgo.GoString), _size : (@:checkr _ph ?? throw "null pointer dereference").spsz } : stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0), ({ _name : ("pcsz" : stdgo.GoString), _size : (@:checkr _ph ?? throw "null pointer dereference").pcsz } : stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _size : (0 : stdgo.GoUInt32) } : stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0>);
        (@:checkr _f ?? throw "null pointer dereference").sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>>((5 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>>);
        var _off = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.hdrSize : stdgo.GoUInt32);
        for (_i => _sect in _sects) {
            var _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.plan9obj.Plan9obj_section.Section)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>);
            (@:checkr _s ?? throw "null pointer dereference").sectionHeader = ({ name : _sect._name?.__copy__(), size : _sect._size, offset : _off } : stdgo._internal.debug.plan9obj.Plan9obj_sectionheader.SectionHeader);
            _off = (_off + (_sect._size) : stdgo.GoUInt32);
            (@:checkr _s ?? throw "null pointer dereference")._sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.offset : stdgo.GoInt64), ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.size : stdgo.GoInt64));
            (@:checkr _s ?? throw "null pointer dereference").readerAt = stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._sr);
            (@:checkr _f ?? throw "null pointer dereference").sections[(_i : stdgo.GoInt)] = _s;
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
