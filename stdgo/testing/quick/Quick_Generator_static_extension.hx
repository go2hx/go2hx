package stdgo.testing.quick;
class Generator_static_extension {
    static public function generate(t:stdgo._internal.testing.quick.Quick_Generator.Generator, _rand:stdgo._internal.math.rand.Rand_Rand.Rand, _size:StdTypes.Int):stdgo._internal.reflect.Reflect_Value.Value {
        final _rand = (_rand : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        final _size = (_size : stdgo.GoInt);
        return stdgo._internal.testing.quick.Quick_Generator_static_extension.Generator_static_extension.generate(t, _rand, _size);
    }
}
