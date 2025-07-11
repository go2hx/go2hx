package stdgo._internal.internal.reflect;
enum abstract BasicKind(Int) from Int to Int {
	public final invalid_kind = 0;
	public final bool_kind;
	public final int_kind; // 2
	public final int8_kind;
	public final int16_kind;
	public final int32_kind; // 5
	public final int64_kind;
	public final uint_kind;
	public final uint8_kind;
	public final uint16_kind;
	public final uint32_kind;
	public final uint64_kind;
	public final uintptr_kind;
	public final float32_kind;
	public final float64_kind;
	public final complex64_kind;
	public final complex128_kind;
	public final string_kind; // 17
	public final unsafepointer_kind;

	public final untyped_bool_kind;
	public final untyped_int_kind;
	public final untyped_rune_kind;
	public final untyped_float_kind;
	public final untyped_complex_kind;
	public final untyped_string_kind;
	public final untyped_nil_kind; // 25
}