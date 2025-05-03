package stdgo._internal.runtime.pprof;
function _printCountProfile(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _name:stdgo.GoString, _p:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile):stdgo.Error {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _key = function(_stk:stdgo.Slice<stdgo.GoUIntptr>, _lbls:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L404"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L405"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("@" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L406"
            for (__0 => _pc in _stk) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L407"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L409"
            if (({
                final value = _lbls;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L410"
                _buf.writeString(("\n# labels: " : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L411"
                _buf.writeString((_lbls.string() : stdgo.GoString)?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L413"
            return (_buf.string() : stdgo.GoString)?.__copy__();
        };
        var _count = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _index = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _keys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _n = (_p.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L419"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _k = (_key(_p.stack(_i), _p.label(_i)).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L421"
                if ((_count[_k] ?? (0 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
                    _index[_k] = _i;
                    _keys = (_keys.__append__(_k.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
//"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L425"
                (@:typeIncDecStmt_escapeParens _count[_k] != null ? _count[_k]++ : (0 : stdgo.GoInt));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L428"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount(_keys, _count) : stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>)));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L430"
        if ((_debug > (0 : stdgo.GoInt) : Bool)) {
            var _tw = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_w, (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L433"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_tw), ("%s profile: total %d\n" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_p.len()));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L434"
            for (__0 => _k in _keys) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L435"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_tw), ("%d %s\n" : stdgo.GoString), stdgo.Go.toInterface((_count[_k] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface(_k));
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L436"
                stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(stdgo.Go.asInterface(_tw), _p.stack((_index[_k] ?? (0 : stdgo.GoInt))), false);
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L438"
            return _tw.flush();
        };
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L443"
        _b._pbValueType((11 : stdgo.GoInt), _name?.__copy__(), ("count" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L444"
        (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((12 : stdgo.GoInt), (1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L445"
        _b._pbValueType((1 : stdgo.GoInt), _name?.__copy__(), ("count" : stdgo.GoString));
        var _values = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L449"
        for (__0 => _k in _keys) {
            _values[(0 : stdgo.GoInt)] = (_count[_k] ?? (0 : stdgo.GoInt) : stdgo.GoInt64);
            _locs = _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _p.stack((_index[_k] ?? (0 : stdgo.GoInt))));
            var _idx = (_index[_k] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            var _labels:() -> Void = null;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L456"
            if (({
                final value = _p.label(_idx);
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _labels = function():Void {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L458"
                    for (_k => _v in (_p.label(_idx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap)) {
                        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L459"
                        _b._pbLabel((3 : stdgo.GoInt), _k?.__copy__(), _v?.__copy__(), (0i64 : stdgo.GoInt64));
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L463"
            _b._pbSample(_values, _locs, _labels);
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L465"
        _b._build();
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L466"
        return (null : stdgo.Error);
    }
