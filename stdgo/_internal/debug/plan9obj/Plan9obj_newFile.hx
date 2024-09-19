package stdgo._internal.debug.plan9obj;
function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>; var _1 : stdgo.Error; } {
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _r.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.debug.plan9obj.Plan9obj__parseMagic._parseMagic((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _ph = (stdgo.Go.setRef(({} : stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog>);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_ph)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _f = (stdgo.Go.setRef(({ fileHeader : ({ magic : _ph.magic, bss : _ph.bss, entry : (_ph.entry : stdgo.GoUInt64), ptrSize : (4 : stdgo.GoInt), loadAddress : (4096i64 : stdgo.GoUInt64), hdrSize : (32i64 : stdgo.GoUInt64) } : stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader) } : stdgo._internal.debug.plan9obj.Plan9obj_File.File)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>);
        if ((_ph.magic & (32768u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            {
                var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_f.fileHeader.entry))) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _f.fileHeader.ptrSize = (8 : stdgo.GoInt);
            _f.fileHeader.loadAddress = (2097152i64 : stdgo.GoUInt64);
            _f.fileHeader.hdrSize = (_f.fileHeader.hdrSize + ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        var _sects:stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0> = (new stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0>(5, 5, ...[({ _name : ("text" : stdgo.GoString), _size : _ph.text } : stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0), ({ _name : ("data" : stdgo.GoString), _size : _ph.data } : stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0), ({ _name : ("syms" : stdgo.GoString), _size : _ph.syms } : stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0), ({ _name : ("spsz" : stdgo.GoString), _size : _ph.spsz } : stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0), ({ _name : ("pcsz" : stdgo.GoString), _size : _ph.pcsz } : stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _size : (0 : stdgo.GoUInt32) } : stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0>);
        _f.sections = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>((5 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>);
        var _off = (_f.fileHeader.hdrSize : stdgo.GoUInt32);
        for (_i => _sect in _sects) {
            var _s = (stdgo.Go.setRef(({} : stdgo._internal.debug.plan9obj.Plan9obj_Section.Section)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>);
            _s.sectionHeader = ({ name : _sect._name?.__copy__(), size : _sect._size, offset : _off } : stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader);
            _off = (_off + (_sect._size) : stdgo.GoUInt32);
            _s._sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, (_s.sectionHeader.offset : stdgo.GoInt64), (_s.sectionHeader.size : stdgo.GoInt64));
            _s.readerAt = stdgo.Go.asInterface(_s._sr);
            _f.sections[(_i : stdgo.GoInt)] = _s;
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
