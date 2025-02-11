package stdgo._internal.math.big;
function benchmarkExp3Power(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        for (__8 => _y in (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(10, 10, ...[(16u32 : stdgo._internal.math.big.Big_word.Word), (64u32 : stdgo._internal.math.big.Big_word.Word), (256u32 : stdgo._internal.math.big.Big_word.Word), (1024u32 : stdgo._internal.math.big.Big_word.Word), (4096u32 : stdgo._internal.math.big.Big_word.Word), (16384u32 : stdgo._internal.math.big.Big_word.Word), (65536u32 : stdgo._internal.math.big.Big_word.Word), (262144u32 : stdgo._internal.math.big.Big_word.Word), (1048576u32 : stdgo._internal.math.big.Big_word.Word), (4194304u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>)) {
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#x" : stdgo.GoString), stdgo.Go.toInterface(_y))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        _z._expWW((3u32 : stdgo._internal.math.big.Big_word.Word), _y);
                        _i++;
                    };
                };
            });
        };
    }
