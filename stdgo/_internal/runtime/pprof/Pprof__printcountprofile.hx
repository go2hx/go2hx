package stdgo._internal.runtime.pprof;
function _printCountProfile(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _name:stdgo.GoString, _p:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile):stdgo.Error {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _key = function(_stk:stdgo.Slice<stdgo.GoUIntptr>, _lbls:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>):stdgo.GoString {
            @:check2 _buf.reset();
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("@" : stdgo.GoString));
            for (__0 => _pc in _stk) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (" %#x" : stdgo.GoString), stdgo.Go.toInterface(_pc));
            };
            if ((_lbls != null && ((_lbls : Dynamic).__nil__ == null || !(_lbls : Dynamic).__nil__))) {
                @:check2 _buf.writeString(("\n# labels: " : stdgo.GoString));
                @:check2 _buf.writeString((@:check2r _lbls.string() : stdgo.GoString)?.__copy__());
            };
            return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
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
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _k = (_key(_p.stack(_i), _p.label(_i)).__copy__() : stdgo.GoString);
if ((_count[_k] ?? (0 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
                    _index[_k] = _i;
                    _keys = (_keys.__append__(_k.__copy__()));
                };
(_count[_k] != null ? _count[_k]++ : (0 : stdgo.GoInt));
                _i++;
            };
        };
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount(_keys, _count) : stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>)));
        if ((_debug > (0 : stdgo.GoInt) : Bool)) {
            var _tw = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_w, (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_tw), ("%s profile: total %d\n" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_p.len()));
            for (__0 => _k in _keys) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_tw), ("%d %s\n" : stdgo.GoString), stdgo.Go.toInterface((_count[_k] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface(_k));
                stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(stdgo.Go.asInterface(_tw), _p.stack((_index[_k] ?? (0 : stdgo.GoInt))), false);
            };
            return @:check2r _tw.flush();
        };
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        @:check2r _b._pbValueType((11 : stdgo.GoInt), _name?.__copy__(), ("count" : stdgo.GoString));
        @:check2 (@:checkr _b ?? throw "null pointer dereference")._pb._int64Opt((12 : stdgo.GoInt), (1i64 : stdgo.GoInt64));
        @:check2r _b._pbValueType((1 : stdgo.GoInt), _name?.__copy__(), ("count" : stdgo.GoString));
        var _values = (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        for (__0 => _k in _keys) {
            _values[(0 : stdgo.GoInt)] = (_count[_k] ?? (0 : stdgo.GoInt) : stdgo.GoInt64);
            _locs = @:check2r _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _p.stack((_index[_k] ?? (0 : stdgo.GoInt))));
            var _idx = (_index[_k] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            var _labels:() -> Void = null;
            if ((_p.label(_idx) != null && ((_p.label(_idx) : Dynamic).__nil__ == null || !(_p.label(_idx) : Dynamic).__nil__))) {
                _labels = function():Void {
                    for (_k => _v in (_p.label(_idx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap)) {
                        @:check2r _b._pbLabel((3 : stdgo.GoInt), _k?.__copy__(), _v?.__copy__(), (0i64 : stdgo.GoInt64));
                    };
                };
            };
            @:check2r _b._pbSample(_values, _locs, _labels);
        };
        @:check2r _b._build();
        return (null : stdgo.Error);
    }
