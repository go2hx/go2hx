package stdgo._internal.debug.dwarf;
function _formToClass(_form:stdgo._internal.debug.dwarf.Dwarf_t_format.T_format, _attr:stdgo._internal.debug.dwarf.Dwarf_attr.Attr, _vers:stdgo.GoInt, _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf>):stdgo._internal.debug.dwarf.Dwarf_class_.Class_ {
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L160"
        {
            final __value__ = _form;
            if (__value__ == ((22u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L166"
                return (0 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((1u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((27u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((41u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((42u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((43u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((44u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L169"
                return (1 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((10u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((3u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((4u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((9u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L178"
                if ((stdgo._internal.debug.dwarf.Dwarf__attrisexprloc._attrIsExprloc[_attr] ?? false)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L179"
                    return (4 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L181"
                return (2 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((11u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((5u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((6u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((7u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((13u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((15u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((30u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((33u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L189"
                {
                    var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf__attrptrclass._attrPtrClass != null && stdgo._internal.debug.dwarf.Dwarf__attrptrclass._attrPtrClass.__exists__(_attr) ? { _0 : stdgo._internal.debug.dwarf.Dwarf__attrptrclass._attrPtrClass[_attr], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_class_.Class_), _1 : false }), _class:stdgo._internal.debug.dwarf.Dwarf_class_.Class_ = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_vers < (4 : stdgo.GoInt) : Bool) && _ok : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L190"
                        return _class;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L192"
                return (3 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((12u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((25u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L195"
                return (5 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((16u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((17u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((18u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((19u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((20u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((21u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((28u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((36u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L198"
                return (10 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((32u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L201"
                return (11 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((14u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((26u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((29u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((31u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((37u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((38u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((39u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format)) || __value__ == ((40u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L204"
                return (12 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((23u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L210"
                {
                    var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf__attrptrclass._attrPtrClass != null && stdgo._internal.debug.dwarf.Dwarf__attrptrclass._attrPtrClass.__exists__(_attr) ? { _0 : stdgo._internal.debug.dwarf.Dwarf__attrptrclass._attrPtrClass[_attr], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_class_.Class_), _1 : false }), _class:stdgo._internal.debug.dwarf.Dwarf_class_.Class_ = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L211"
                        return _class;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L213"
                return (0 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((24u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L216"
                return (4 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((7968u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L219"
                return (13 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((7969u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L222"
                return (14 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((34u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L225"
                return (16 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else if (__value__ == ((35u32 : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L228"
                return (17 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L162"
                _b._error(("cannot determine class of unknown attribute form" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L163"
                return (0 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
            };
        };
    }
