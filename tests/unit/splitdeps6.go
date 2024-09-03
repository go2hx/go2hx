package main

type Float struct {
	prec uint32
	mode int
	acc  int
	form int
	neg  bool
	mant int
	exp  int32
}

func (z *Float) SetInt64(x int64) *Float {
	return z
}

func (z *Float) Add(x, y *Float) *Float {
	return z
}

func (z *Float) Sub(x, y *Float) *Float {
	return z
}

func (z *Float) Mul(x, y *Float) *Float {
	return z
}

func (z *Float) Div(x, y *Float) *Float {
	return z
}

func (z *Float) Quo(x, y *Float) *Float {
	return z
}

func main() {
	// zero value can be used in any and all positions of binary operations
	make := func(x int) *Float {
		var f Float
		if x != 0 {
			f.SetInt64(int64(x))
		}
		// x == 0 translates into the zero value
		return &f
	}
	for _, test := range []struct {
		z, x, y, want int
		opname        rune
		op            func(z, x, y *Float) *Float
	}{
		{2, 0, 1, 0, '/', (*Float).Quo},
	} {
		z := make(test.z)
		test.op(z, make(test.x), make(test.y))
		got := 0
		if !false {
			//got = int(z.int64())
		}
		if got != test.want {
			//t.Errorf("%d %c %d = %d; want %d", test.x, test.opname, test.y, got, test.want)
		}
	}

}
