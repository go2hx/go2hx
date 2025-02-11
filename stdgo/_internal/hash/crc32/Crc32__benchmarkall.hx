package stdgo._internal.hash.crc32;
function _benchmarkAll(_h:stdgo._internal.hash.Hash_hash32.Hash32):stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            for (__4 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(15 : stdgo.GoInt), (40 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (32768 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _name = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_size))?.__copy__() : stdgo.GoString);
                if ((_size >= (1024 : stdgo.GoInt) : Bool)) {
                    _name = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dkB" : stdgo.GoString), stdgo.Go.toInterface((_size / (1024 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__();
                };
                @:check2r _b.run((("size=" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    {
                        var _align = (0 : stdgo.GoInt);
                        while ((_align <= (1 : stdgo.GoInt) : Bool)) {
                            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("align=%d" : stdgo.GoString), stdgo.Go.toInterface(_align)).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                                stdgo._internal.hash.crc32.Crc32__benchmark._benchmark(_b, _h, (_size : stdgo.GoInt64), (_align : stdgo.GoInt64));
                            });
                            _align++;
                        };
                    };
                });
            };
        };
    }
